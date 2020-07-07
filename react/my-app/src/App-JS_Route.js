import React, { Component } from 'react';
import Home from './Home';
import About from './About';
import Contact from './Contact';

class App extends Component {

    state = {
        location: "about"
    }

    getView() {
        switch (this.state.location) {
            case "/home":
                return <Home />;
            case "/about":
                return <About />;
            case "/contact":
                return <Contact />
            default:
                return null
        }
    }

    componentDidMount() {
        console.log(window.location.pathname)
        this.setState({
            location: window.location.pathname
        })

    }

    render() {
        return (
            <div>
                {this.getView()}
                <button onClick={() => this.setState({
                    location: '/home'
                })}>Home</button>
                <button onClick={() => this.setState({
                    location: '/contact'
                })}>Contact</button>
                <button onClick={() => this.setState({
                    location: '/about'
                })}>About</button>
            </div>
        )
    }
}

export default App
