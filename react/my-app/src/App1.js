import React from 'react'
import Counter from './components/Counter'
import ColorPicker from './components/ColorPicker'
import Pokemon from "./components/Pokemon"
import ListItem from './components/ListItem'
import CountUp from "./components/CountUp"

const App = () => {

// const myListItems = ["task1", "task2", "task3"]

    return (
        <>
            {/* <Pokemon pokemonName="pikachu"/>
       <Pokemon pokemonName="charmander"/>
       <Pokemon pokemonName="geodude"/> 
         <ColorPicker initialTextColor="green"/> 
       */}


            {/* <Counter/> */}
            {/* {myListItems.map(todo => 
                <ListItem key={todo} todo={todo} />

            )} */}

           <CountUp/>


        </>
    )
}

export default App