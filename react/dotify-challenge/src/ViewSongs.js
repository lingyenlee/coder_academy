import React, { useEffect, useState } from 'react'
import axios from 'axios'
import { Link } from 'react-router-dom'
import DeleteSong from './DeleteSong';

const ViewSongs = () => {

    const [songs, setSongs] = useState([])
    const [isLoading, setIsLoading] = useState(true)
    const [errorMessage, setErrorMessage] = useState("")


    useEffect(() => {
        axios.get(`http://localhost:3000/songs`)
            .then(res => {
                setIsLoading(!isLoading)
                setSongs(res.data)
            })
            .catch(error => {
                setErrorMessage("There was a problem, please refresh and try again")
                setIsLoading(!isLoading)
            })
        // eslint-disable-next-line
    }, [])

    function RenderSongs() {
        return (
            <>
                <Link to={`/new`}>Add a Song</Link>
                {songs.map((song, index) => (
                    <li key={`${song}-${index}`}>
                        {index}. {song.title} by {song.artist}
                        <Link to={`/songs/${song.id}`}>View</Link>&nbsp;
                        <Link to={`/songs/${song.id}/edit`}>Edit</Link>

                        <DeleteSong
                            songId={song.id}
                            onDelete={() => setSongs(songs.filter((s, i) => s.id !== song.id))}
                        />
                    </li>
                ))}
            </>
        )
    }

    return (
        <div>
            {errorMessage && <h3>{errorMessage}</h3>}
            {!isLoading ? <RenderSongs /> : <h2>Loading...</h2>}
        </div>
    )
}

export default ViewSongs
