async function getPokemon(pokemonName) {
    const result = await axios.get(`https://pokeapi.co/api/v2/pokemon/${pokemonName}`)
    console.log(result)
}

getPokemon('charmander')


// //await has to be used inside the async function block
// async function run() {

//     // const pokemonNames = ["pikachu", "charmander", "ditto"]

//     // //need to use the word async word inside the for Each
//     // pokemonNames.forEach(async pokemonName => {
//     //     const response = await getPokemon(pokemonName)
//     //     console.log(response.data)
//     //console.log(pokemonName)
//     // })
//     // console.log("run inside async")
//     //    try {
//     //     const pokemon = await getPokemon("charmander")
//     //     console.log(pokemon)
//     //    } catch (e) {
//     //        console.log(e)
//     //    }

//     const pokemonNames = [
//         await getPokemon("pikachu"),
//         await getPokemon("charmander"),
//         await getPokemon("squirtle")
//     ]

//     console.log(pokemonNames)

//     //combine promise all with await
//     const arrayOfPokemon = await Promise.all(pokemonNames)
//     console.log(arrayOfPokemon)
//     //console.log(Promise.all(pokemonNames))   
// }

// run()
// console.log("after run")


// getPokemon("charmander")
//     .then(response => console.log(response.data.name))