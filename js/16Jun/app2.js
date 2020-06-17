
// Event Listeners - Stash kitty
// Stash kitty

// There is a picture of a cute cat, and a moustache.

// Your task is to implement an event listener that will put the moustache where the user clicks, so you can give the cute cat a moustache.

// Implement the scaffolded function in *script.js* to accomplish this, and use the function in an event listener.

// Some tips:
// * Two event properties that will help here are *pageX* and *pageY*. These return coordinates of the mouse. Use console.log to see what is returned.
// * Two style properties you can use are *style.top* and *style.left*, although you could find another way to place the moustache. Note that you have to include units when you set these properties.


// BEAST MODE

// Make the mustache a "drag and drop" element, so users can place it by dragging and dropping instead of clicking

const getStash = document.querySelector("#stash-pic")
const kitty = document.querySelector("#cat-pic")
// console.log(getStash)

//getStash.addEventListener("ondragstart", (e) =>  onDragStart(e), false)
getStash.addEventListener("click", (e) => {
    console.log(e)
    console.log("X", e.pageX)
    console.log("Y", e.pageY)
    console.log("stash clicked")
    // getStash.style.top= "145px"
    // getStash.style.left = "145px"

}
    , false)


kitty.addEventListener("click", (e) => {
    console.log(e)

    const xOffset = getStash.getBoundingClientRect().width/2
    const yOffset = getStash.getBoundingClientRect().height/2

    console.log(getStash.getBoundingClientRect())
    getStash.style.top = `${e.pageY - yOffset}px`
    getStash.style.left = `${e.pageX - xOffset}px`
    console.log("X2", e.pageX)
    console.log("Y2", e.pageY)

}, false)

function onDragStart(e) {
    e
        .dataTrasfer
        .setData("text/plain", e.target.id)
}