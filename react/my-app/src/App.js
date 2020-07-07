import React, { Component } from 'react'
import Home from './Home';
import Pokemon from './About';
// import Contact from './Contact';
import { BrowserRouter, Route} from 'react-router-dom'

export class App extends Component {
    render() {
        return (
            <BrowserRouter>
                <Route exact path="/" component={Home} />
                <Route exact path="/pokemon/:pokemonName" component={Pokemon} />
                {/* <Route exact path="/" render={props => <Home data="myData"/>}/> */}
                {/* <Route exact path="/contact" component={Contact} /> */}
                {/* <Link to="/"><button>Home</button></Link>
                <Link to="/contact"><button>Contact</button></Link>
                <Link to="/about/3"><button>About</button></Link> */}
            </BrowserRouter>
        )
    }
}

export default App
