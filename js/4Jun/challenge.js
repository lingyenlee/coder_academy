// Only digits
// Often we want a form  field to only contain digits. eg a phone number. 

// Your challenge is to create the validation for this. 

const onlyDigits = (string) => {
    // Your code here


    input = /^[0-9]+$/.test(string)
    if (input) {
        return true
    } else {
        return false
    }
    //&& !isNaN(parseInt(string)) 
    //  console.log(input)
    // console.log(string)
    // console.log(parseInt(string))

}

console.log(onlyDigits("qrewer4wer")) // returns false
console.log(onlyDigits("0O0")) // returns false
console.log(onlyDigits("000")) // returns true


//Palindrome
//We need to be able to tell if a string is a palindrome.
//ie it reads the same forwards and backwards.

const palindrome = (str) => {
    // Your code here
    let newStr = str.replace(/[ ,.]/g, "").toLowerCase()
    console.log(`newstring ${newStr}`)
    //while (str.length > 0)
    //console.log(str[0])
    //console.log(str[str.length-1])
    if (newStr[0] === newStr[newStr.length - 1]) {
        newStr = newStr.slice(1, str.length - 1)
        console.log(`newStr inside ${newStr}`)
    }


}





palindrome("race car") // should return true
palindrome("not a palindrome") // should return false
palindrome("A man, a plan, a canal. Panama") // should return true
palindrome("never odd or even") // should return true
palindrome("nope") // should return false
palindrome("almostomla") // should return false
palindrome("My age is 0, 0 si ega ym.") // should return true
palindrome("1 eye for of 1 eye.") // should return false

