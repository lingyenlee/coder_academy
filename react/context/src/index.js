import React from "react"
import ReactDOM from 'react-dom'
import App from "./App"

//takes a component eg HTML tag in the first parameter, 2nd parameter the element targeted in the DOM
ReactDOM.render(
    <App/>,
    document.getElementById("root")
)