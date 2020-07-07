import React, { useState, useEffect } from 'react'
import Axios from 'axios'

const ViewBook = ({bookId}) => {

    const [book, setBook] = useState("")
    const [isLoading, setIsLoading] = useState(true)
    const [errorMsg, setErrorMsg] = useState("")

    useEffect(() => {
        Axios.get(`http://localhost:3000/books/${bookId}`)
            .then(res => {
                setBook(res.data)
                setIsLoading(!isLoading)
            })
    }, [])

    return (
        <div>
            {!isLoading ? (<p>{book.title} by {book.author}</p>) : <p>Loading Data...</p>}
        </div>
    )
}

export default ViewBook
