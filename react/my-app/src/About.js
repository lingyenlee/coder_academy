import React, { Component } from 'react'

class Pokemon extends Component {
    state = {
        pokemonData: null
    }

    // async componentDidMount() {
    //     const res =await.get(`https://pokeapi.co/api/v2/pokemon/${this.props.match.params.pokemonName}`)
    // this.setState({pokemonData: res.data})
    // }

    render() {
        console.log(this.props)
        return (
            <>
                <h1> Pokemon name: {this.props.match.params.pokemonName}</h1>
                {this.state.pokemonData ? "There is data" : "Loading..."}

            </>
        )
    }
}

export default Pokemon
