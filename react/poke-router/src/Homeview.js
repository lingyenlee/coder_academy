import React, { Component } from 'react'
import { Link } from 'react-router-dom'

class Homeview extends Component {
    render() {
        return (
            <div>
                <h1>Home</h1>
                <Link to="/category"><button>Create a new entry</button></Link>
            </div>
        )
    }
}

export default Homeview
