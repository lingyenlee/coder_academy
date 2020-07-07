import React, { Component } from 'react'
import { Link } from 'react-router-dom'

export class Home extends Component {

    state = {
        pokemonNames: ['charmander', 'pikachu', 'squirtle']
    }


    render() {
        return (
            <>
                <h1>Choose a pokemon</h1>
                {this.state.pokemonNames.map(poke =>
                    <Link to={`pokemon/${poke}`}>
                        <li>{poke}</li>
                    </Link>
                )}
            </>

        )
    }
}

export default Home
