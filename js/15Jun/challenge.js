function readingSpeed(text) {
    // Your Code Here
    let formattedText = text.toLowerCase().replace(/[.,\/#!$%\^&\*;:{}=\-_`~()]/g, "");
    let totalCount = formattedText.length
    console.log(totalCount)
    console.log(formattedText)
    let wordArray = formattedText.split(" ")
    console.log(wordArray)

    let counter = 0
    let wordObj = makeWordObj(wordArray)

    // for (const word in wordObj) {
    //     if (wordObj[word] > 1) {
    //         counter += 1
    //     } else {
          
    //         for (let i = 0; )

    //     }
    // }
    console.log(wordObj)

}

function makeWordObj(arr) {

    let wordObj = {}
    arr.forEach(word => {

        if (!wordObj[word]) {
            wordObj[word] = 1
        } else {
            wordObj[word] += 1
        }

    })

    return wordObj
}

readingSpeed('Hello World hello!')
