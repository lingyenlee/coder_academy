//make HTTP request



function makeGetRequest(theUrl, callback) {
    const request = new XMLHttpRequest();
    request.open("GET", theUrl, true);
    request.onload = (res) => callback(res.currentTarget.responseText)
    request.send();
}

// function callback(data) {
//     const dataObj = JSON.parse(data)
//     // return dataObj
//     //const dataObj = JSON.parse(data)
//     console.log(dataObj)
// }

// makeGetRequest("https://pokeapi.co/api/v2/pokemon/ditto",parseResponse)
//makeGetRequest('https://pokeapi.co/api/v2/pokemon/ditto', (data) => {console.log(data)}) 


// Write a function called getPokemonStats(pokemonName, callback) which will take as an argument a pokemon's name 
//and pass an array of their stats to the callback, basically each stat will be an object with name and baseState 
//that looks like this:
// [{name: "speed", baseStat: 45}, {name: "attack", baseStat: 52}, ...]

// function getPokemonStats(pokemonName, callback) {

//   const baseUrl = "https://pokeapi.co/api/v2"
//     // const request = new XMLHttpRequest()

//     //first call back to organise data
//     makeGetRequest(`${baseUrl}/pokemon/${pokemonName}`, (data) => {
//         const statsArray = []

//         try {
//             const dataObj = JSON.parse(data)
//             for (stat of dataObj.stats) {
//                 statsArray.push({
//                     name: stat.stat.name,
//                     baseStat: stat.base_stat
//                 })
//             }
//         } catch (e) {

//             callback("Pokemon Not Found")
//         }
//         //2nd callback to get the data
//         callback(statsArray)
//     })

// }

// getPokemonStats("ditto", (statsArray) => console.log(statsArray))


// function getWeight(data) {
//   let weight = []
//     try {
//         const pokemonObj = JSON.parse(data)
//         weight.push(pokemonObj.weight)
//     } catch (e) {
//         console.log(e)
//         //callback("Pokemon Not Found")
//     }
//    // return weight
//   return weight    
//    //callback(weight)
//     // console.log(weight_pokemon1)
// }

function whichPokemonIsHeavier(pokemonName1, pokemonName2, callback) {

    const pokemon1_url = `https://pokeapi.co/api/v2/pokemon/${pokemonName1}`
    const pokemon2_url = `https://pokeapi.co/api/v2/pokemon/${pokemonName2}`

    
    
     makeGetRequest(pokemon1_url, (data) => {
        let weight = []
        const pokemonObj1 = JSON.parse(data)
        //  weight.push(pokemonObj1.weight)

         makeGetRequest(pokemon2_url, (data) => {
            const pokemonObj2 = JSON.parse(data)

            console.log(pokemonObj1.weight, pokemonObj2.weight)
            //  weight.push(pokemonObj1.weight, pokemonObj2.weight)
     
         })

         callback(weight) 
     })

     

    
    // const response_pokemon2 = makeGetRequest(pokemon2_url, callback)

    
  
}


whichPokemonIsHeavier("ditto", "charmander",  (weight) => console.log(weight))



// function makeGetRequest(url, callback){
//     const request = new XMLHttpRequest()
//     request.open("GET", url, true)
//     request.onload = (res) => {
//         callback(res.target.responseText)
//     }
//     request.send()
// }


// function whichPokemonIsHeavier(pokemonName1, pokemonName2, callback){
//     makeGetRequest(
//         `https://pokeapi.co/api/v2/pokemon/${pokemonName1}`,
//         (rawPokemonData) => {
//             const pokemonData1 = JSON.parse(rawPokemonData)
//             makeGetRequest(
//                 `https://pokeapi.co/api/v2/pokemon/${pokemonName2}`,
//                 (rawPokemonData2) => {
//                     const pokemonData2 = JSON.parse(rawPokemonData2)
//                     if(pokemonData1.weight > pokemonData2.weight){
//                         callback(`${pokemonData1.name} is ${pokemonData1.weight - pokemonData2.weight}kgs heavier than ${pokemonData2.name}`)
//                     } else if(pokemonData1.weight < pokemonData2.weight){
//                         callback(`${pokemonData2.name} is ${pokemonData2.weight - pokemonData1.weight}kgs heavier than ${pokemonData1.name}`)
//                     } else {
//                         callback(`${pokemonData1.name} and ${pokemonData2.name} are the same weight`)
//                     }
//                 }
//             )
//         }
//     )
// }

// whichPokemonIsHeavier('charizard', 'charmander', (weightDescription) => {
//     console.log(weightDescription)
// })

function sayHi() {
    return () => console.log("func returned from sayhi")
}

//sayHi()()