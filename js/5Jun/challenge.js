// You will have to implement the following methods:

// prevPage Turn to previous page. If already at first page, notify user You are on the first page

// nextPage Turn to next page. If already at last page, notify user You are on the last page

// firstPage Go to first page 

// lastPage Go to last page

// goToPage Takes an integer as input and goes to that page. 
// If page doesn't exist, stay on current page, and notify user that page doesn't exist Page not found 

class Pagination {
    // Implement this class
    constructor(items = [], pageSize = 10) {
        this.items = items
        this.pageSize = pageSize
        this.currentPage = 1
    }

    prevPage() {
        if (this.currentPage === 1) {
            console.log("You are on first page")
        }
        else {

            this.currentPage = this.currentPage - 1
            console.log(`You are on ${this.currentPage}`)
            return this
        }

    }

    nextPage() {
        if (this.currentPage === this.pageSize) {
            console.log("You are on last page")
        }
        else {
            this.currentPage = this.currentPage + 1
            console.log(`You are on Page ${this.currentPage}`)
            console.log(this)
            return this
        }
    }

    firstPage() {
        this.currentPage = 1
        console.log(`You are on Page ${this.currentPage}`)
        console.log(this)
        return this

    }

    lastPage() {
        this.currentPage = this.pageSize
        console.log(`You are on Page ${this.pageSize}`)
        return this

    }

    goToPage(num) {
        this.currentPage = num
        console.log(this.currentPage)
        console.log(`You are on Page ${this.currentPage}`)
    }


}

// const pagination = new Pagination()
// pagination.nextPage().nextPage().lastPage().goToPage(7)

async function foo() {
    const result1 = await new Promise((resolve) => setTimeout(() => resolve('1')))
    const result2 = await new Promise((resolve) => setTimeout(() => resolve('2')))
   // console.log(result1, result2)
 }

console.log( foo())