import React, { useState, useEffect } from 'react'
import axios from 'axios'
import { Link } from 'react-router-dom'
import DeleteBook from "./DeleteBook"

const ViewBooks = () => {

    const [books, setBooks] = useState([])
    const [isLoading, setIsLoading] = useState(true)
    const [errorMsg, setErrorMsg] = useState("")

    useEffect(() => {
        axios.get(`http://localhost:3000/books`)
            .then(res => {
                setBooks(res.data)
                setIsLoading(!isLoading)
            })
            .catch(err => {
                setErrorMsg(err)
            })
        // eslint-disable-next-line
    }, [])

    function handleDelete(id) {
        setBooks(books.filter(book => book.id !== id))
    }

    function RenderBooks() {
        return (
            <div>
                <ul>
                    {books.map(book => (
                        <li key={book.id}>{book.title} by {book.author}
                            <Link to={`/books/${book.id}`}> View </Link>
                            <DeleteBook
                                bookId={book.id}
                                onDelete={() => handleDelete(book.id)} />
                        </li>
                    ))}
                </ul>
            </div>
        )
    }

    return (
        <div>
            {errorMsg && <h3>{errorMsg}</h3>}
            {!isLoading ? <RenderBooks /> : <p>Loading data...</p>}
        </div>
    )
}


export default ViewBooks