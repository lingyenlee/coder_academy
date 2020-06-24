import React, { Component } from 'react'
import axios from "axios"

class Pokemon extends Component {
    constructor(props) {
        super(props)
        this.state = {
            pokemon: null
        }
    }

    async componentDidMount() {
        const response = await axios.get(`https://pokeapi.co/api/v2/pokemon/${this.props.pokemonName}`)
        const pokemonData = response.data
        this.setState({
            pokemon: pokemonData
        })
        
        console.log(response)

    }

    render() {
        return (
            <div>
                {this.state.pokemon ? this.state.pokemon.name : "Loading"}
            </div>
        )
    }
}

export default Pokemon