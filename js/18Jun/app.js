
let books = [
    {
        title: 'The Design of EveryDay Things',
        author: 'Don Norman',
        alreadyRead: false
    }, {
        title: 'The Most Human Human',
        author: 'Brian Christian',
        alreadyRead: true
    }
];

const ul = document.createElement("ul")

books.forEach(book => {


    const li = document.createElement("li")

    const img = document.createElement("img")

    li.innerText = `${book.title} by  ${book.author}`
    ul.appendChild(li)

    if (book.alreadyRead) {
        li.style.color = 'green'
    } else {
        li.style.color = 'red'
    }

})


document.body.append(ul)



