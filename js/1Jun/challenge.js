// Create a function that takes height and width and finds the perimeter of a rectangle.

function findPerimeter(height, width) {

    let perimeter = 2 * height + 2 * width
    return perimeter
}


// Which Function Returns the Larger Number?
function whichIsLarger(f, g) {

    a = f()

    b = g()

    if (a > b) {
        return "f"
    } else if (b > a) {
        return "g"
    } else {
        return "neither"
    }
}

// console.log(whichIsLarger(() => 5, () => 10)) //➞ "g"
// console.log(whichIsLarger(() => 25,  () => 25)) //➞ "neither"
// console.log(whichIsLarger(() => 505050, () => 5050)) //➞ "f"

// Add up the Numbers from a Single Number

//function addUp(num) {

//use loop
// a = function() {
//     count = 0
//     for (let i=1; i < (num+1); i++) {
//         count += i
//     }
//    return count
// }
// return a()

//use reduce
// const a = Array.from(Array(num+1).keys())
// let total = a.reduce((x, acc) =>  x + acc)
// return total
//}

// console.log(addUp(4))// ➞ 10
// console.log(addUp(13)) // ➞ 91
// console.log(addUp(600))// ➞ 180300

// console.log(1&&10)

// Have the function clamp(value, min, max) take the value parameter being passed and:

// Return max if value is greater than max.
// Return min if value is less than min.
// Return value if neither of these conditions are met.

// function clamp(value, min, max) {
//     // Your code here!

//     if (value > max) {
//         return max
//     } else if (value < min) {
//         return min
//     } else {
//         return value
//     }
// }
// console.log(clamp(5, 1, 10)) //Should return 5, value is less than max and greater than min.
// console.log(clamp(5, 1, 4)) //Should return 4, value is greater than max.
// console.log(clamp(5, 6, 10)) //Should return 6, value is less then min.

//Reverse String

// Have the function reverseString(string) take the string parameter being passed and return the string in reverse order.

//function reverse(string) {
// Your Code Here!
// reverseString = ""
// for (let i = (string.length - 1); i >= 0; i--) {
//     reverseString += string[i]
// }

// return reverseString

// const arr = string.split("").reverse().join("")
// return arr

//let reverseString2 = ''
//     if (string === "")
//         return ""
//     else
//         return reverse(string.slice(1, string.length)) + string[0]

// }
// console.log(reverse("Hello JavaScript!"))

function findNeedle(haystack) {
    result = []
    for (let i = 0; i < haystack.length; i++) {
        // console.log(haystack[i])
        // for (let j=0; j< haystack[i].length; j++) {
        if (haystack[i].includes("N")) {  
            for( j =0; j < haystack[i].length; j ++) {
                 if (haystack[i][j] === "N") {
                   result.push(i, j)
                 }
            }          
        }
        
    }
    return result
}

const stack = [
    ['H', 'H', 'H'],
    ['H', 'H', 'H'],
    ['H', 'N', 'H']
]

console.log(findNeedle(stack))