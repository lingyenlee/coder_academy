
// Event listener - Warning
// Warning!
// In index.html, there is a div with id `warning` and a button with id `makeItRed`.
// Your task is to make the background of the the warning div red when the button is clicked. Add node to the script.js file to do this.

// Hint: You can set style directly on a DOM node using the style property. For example:

// ele.style.color = "blue"
// where ele is a node in the DOM.

// const addRedButton = document.querySelector("#makeItRed")
// const warningBackground = document.querySelector("#warning")

const addRed = (e) => {

    warningBackground.classList.toggle("red")

    e.target.textContent = "Remove red!"
   
    //     e.target.textContent === "Make it Red!"
    // }
    // warningBackground.innerHTML === "Warning: My background should be red!" ?
    // warningBackground.innerHTML = "Warning: My background should not be red!" :
    // warningBackground.innerHTML = "Warning: My background should be red!"

}

addRedButton.addEventListener("click", addRed, false)

