const timer = document.createElement("p")
let currentTime = 0
timer.innerText = "0s"

document.body.appendChild(timer)

// setInterval(() => {
//     currentTime++
//     timer.innerText = currentTime

// }, 1000)

// const title = document.querySelector("h1#site-title")

// const myTextBox = document.querySelector("input[type=text]")
// const typedText = document.querySelector("#typed-text")


// myTextBox.addEventListener("keyup", (e) => {
//     typedText.innerHTML = e.target.value
// })

const myBtn = document.querySelector("button")
const myContainer = document.querySelector("#container")

myBtn.addEventListener("click", (e) => {
    console.log("Button clicked")
    // e.target.innerHTML ="clicked"

})

myContainer.addEventListener("click", (e) => {
console.log("container clicked")
})

