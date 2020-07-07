import React, { useState } from 'react'
import axios from 'axios'
import { Redirect } from 'react-router-dom'

const CreateSong = () => {

    const [songTitle, setSongTitle] = useState("")
    const [songArtist, setSongArtist] = useState("")
    const [isCreated, setIsCreated] = useState(false)
    const [errorMessage, setErrorMessage] = useState("")


    function createSong() {
        if (songTitle && songArtist) {
            axios.post(`http://localhost:3000/songs`, {
                song: {
                    title: songTitle,
                    artist: songArtist
                }
            })
                .then(() => setIsCreated(true))
        } else {
            setErrorMessage("Please fill out the form")
        }
    }


    return (
        <div>
            {errorMessage}
            <input
                placeholder="Song Title"
                value={songTitle}
                onChange={e => setSongTitle(e.target.value)}
            />
            <input
                placeholder="Song Artist"
                value={songArtist}
                onChange={e => setSongArtist(e.target.value)}
            />
            <button onClick={createSong}>Create Song</button>
            {isCreated && <Redirect to="/" />}
        </div>
    )
}

export default CreateSong