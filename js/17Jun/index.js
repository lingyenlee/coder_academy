// const loadScript = () => {
//     let script = document.createElement("script")
//     script.type = "text/javascript"
//     script.src = "index.js"
//     document.body.appendChild(script)
//     console.log("script loaded")
// }

// function initialize() {
//     console.log("initialize")
// }

// window.onload = loadScript

document.body.style.fontFamily = "Arial, san-serif"

const nickname = document.querySelector("#nickname")
const favourites = document.querySelector("#favourites")
const hometown = document.querySelector("hometown")
const listItems = document.querySelectorAll("li")
const image = document.createElement("img")

listItems.forEach(listItem => listItem.classList.add("list-item"))

//image.setAttribute()


const fetchButton = document.querySelector("#fetchBtn")

async function fetchSomeone() {

    let response = await fetch("https://randomuser.me/api/")
    let data = await response.json()
    let personObj = data.results[0]
    console.log(personObj)

    nickname.innerHTML = `${personObj.name.first} ${personObj.name.last}`
    image.setAttribute("src", `${personObj.picture.thumbnail}`)
    document.body.append(image)
}




fetchSomeone()

