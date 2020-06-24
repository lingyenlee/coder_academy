import React from 'react'
import Counter from './components/Counter'
import ColorPicker from './components/ColorPicker'
import Pokemon from "./components/Pokemon"

const App = () => {


    return (
        <>
       <Pokemon pokemonName="pikachu"/>
       <Pokemon pokemonName="charmander"/>
       <Pokemon pokemonName="geodude"/>
         {/* <Counter/> */}

         {/* <ColorPicker initialTextColor="green"/> */}
        </>
    )
}

export default App