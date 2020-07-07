import React from 'react'
import Axios from 'axios'

//deconstruct the props
const DeleteSong = ({songId, onDelete}) => {

    function deleteASong () {
        Axios.delete(`http://localhost:3000/songs/${songId}`)
        .then(
            //callback to call ondelete
            onDelete()
        )
    }
    return (
        <button onClick={deleteASong}>X</button>
    )
}

export default DeleteSong
