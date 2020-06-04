function makeGetRequest(url, callback) {

    console.log("Starting request...")

    const request = new XMLHttpRequest()

    //open, setting up request - GET, url and async
    request.open("GET", url, true)

    //handling the response
    request.onload = (res) => {
        // console.log(res.target)
        callback(res.currentTarget.responseText)
    }

    //send the request
    request.send()
}


const getStudent = () => {makeGetRequest("http://localhost:3000/students/1.json", (rawData) => {
    const studentObj = JSON.parse(rawData)
    console.log(studentObj) 
})}

document.querySelector("#get-data-button").addEventListener("click", getStudent)
