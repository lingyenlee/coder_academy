import React from 'react'

//receive data as props or destructuring the props
const Book = ({ title, author }) => {

    //destructuring here or in the parameters above
    // const {title, author} = props
 //   console.log(props)
    return (
        <div className="book">
            <h2>{title}r</h2>
            <p>{author}</p>
        </div>
    )
}

export default Book