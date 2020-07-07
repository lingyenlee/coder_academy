import React, { Component, createElement } from 'react'
import Search from "./Search"
import Button from "./Button"

class SearchController extends Component {
    state = {
        searchValue: ""
    }

    constructor(props) {
        super(props)
        //create a ref and attach to element
        this.elementRef = React.createRef()
    }

    handleSubmit = () => {

        console.log("Submitting", this.state.searchValue)
        // this.setState({
        //     searchValue: ""
        // })

    }

    componentDidMount() {
        console.log(this.elementRef)
        this.elementRef.current.innerText ="hello"
    }

    render() {
        return (
            <div>
                {this.state.searchValue}
                <Search
                    searchValue={this.state.searchValue}
                    onSearchValueChange={(newSearchValue) => {
                        // console.log(e.target.value)
                        this.setState({
                            searchValue: newSearchValue
                        })
                    }}
                    onEnter={this.handleSubmit}
                />
                <Button onSubmit={() => console.log("onsubmit")} />
                <div
                    id="my-div"
                    ref={this.elementRef}
                >
                </div>
            </div>
        )
    }
}

export default SearchController
