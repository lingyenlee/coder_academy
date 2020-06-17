document.cookie.split(";")

let expiry = new Date()
//set document cookie
//document.cookie = `lang=Engish;expires=Tue, 16 Jun 2020 01:14:12 GMT`

//

const b1 = document.querySelector("#b1")
const b2 = document.querySelector("#b2")

function handleClick() {
    console.log("clicked")
}

const eventBeingHandled = "click"

b1.addEventListener(eventBeingHandled, handleClick)

b2.addEventListener("click", () => {
    //need function and click evenet
    b1.removeEventListener(eventBeingHandled, handleClick)
})