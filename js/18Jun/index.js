//import "default export" can be anyname
//import "export const" must be the same as original

//takes in first argument -name of file  
// ./node_modules/.bin/webpack index.js --mode=development

//import myDefaultImport, {country, city} from "./helpers.js"

// console.log(country, city)
// myDefaultImport("John")

import lodash from "lodash"

console.log(lodash.add(10,3))

