import React from 'react'

const PokeInfo = (props) => {
    console.log(props)
    return (
        <div class="poke-info">
            <div class="types">grass, poison</div>
            <div class="height">{props.pokeHeight} cm</div>
            <div class="weight">15kg</div>
        </div>
    )
}

export default PokeInfo