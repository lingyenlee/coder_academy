import React from 'react'
import Axios from 'axios'

const DeleteBook = (props) => {

  
    function deleteABook() {
        Axios.delete(`http://localhost:3000/books/${props.bookId}`)
        props.onDelete()
    }
     
  
    return (
        <span>
            <button onClick={deleteABook}>Delete</button>
        </span>
    )
}

export default DeleteBook