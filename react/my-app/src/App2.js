import React from 'react'
import Book from "../components/Book.js"


const App2 = () => {

    const title = "Hello World"
    let dataLoaded = true
    let isLoadingData = true
    const message = "The app is running"
    const description = "This is a cool app"
    const fact = true
    let data = "Loaded"
    const styles = {
        color: "green",
        fontSize: "100px"
    }
    const myClassName = "header colors green"

    return (
        <>
            <Book />
            {/* id dataLoaded is true, --> load data (right side is true) */}
            {dataLoaded && <h1>{data}</h1>}
            {isLoadingData ? <p>Loading</p> : <h1>{data}</h1>}
            {/* can put js in the curly brackets */}
            <h1 className={"hea" + "der"}>{message} - {description}</h1>
            <p>{description}</p>
            <p>{fact.toString()}</p>
            <h1 style={styles} className={myClassName}>{title}</h1>
            <Book title={"Harry Potter"}
                author={"JK Rowling"} />
            <Book title={"The DaVinci Code"}
                author={"Dan Brown"} />
        </>
    )
}

export default App2