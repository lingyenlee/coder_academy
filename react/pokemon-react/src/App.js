import React from 'react';
import './App.css';
import Poke from "./Poke"

function App() {
  return (
    <>
      <Poke 
      name="Bulbasaur" 
      imgSrc="https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png"
      pokeHeight={30}

      />
      
      <Poke 
      name="Pikachu"  
      imgSrc="https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png"
      pokeHeight={44}
      />

    </>
  );
}

export default App;
