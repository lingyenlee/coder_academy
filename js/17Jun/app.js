// console.log("Hello world")

const lodash = require("lodash")
const inquirer = require("inquirer")

console.log(lodash)

async function getInfo() {
    const response = await inquirer.prompt([
        {
            type: "input",
            name: "color",
            message: "What's your fav color?"
        }
    ])

    console.log(response)
}

getInfo()
