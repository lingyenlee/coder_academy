import React from "react"
import PokeStats from "./PokeStat"
import PokeInfo from "./PokeInfo"

const Poke = (props) => {
    console.log(props)

    return (
        <div class="poke">
            <div class="poke-image" >
                <img height="100px" src={props.imgSrc} />
            </div>

            <PokeInfo pokeHeight={props.pokeHeight} />
            <div class="poke-name">{props.name}</div>
            <PokeStats />
        </div>
    )
}

export default Poke