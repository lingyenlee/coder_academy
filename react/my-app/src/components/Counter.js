import React, { Component } from "react"

class Counter extends Component {
    constructor(props) {
        super(props)
        this.state = {
            count: 0
        }
    }

    componentDidMount() {
        console.log("Mounted")
    }

    componentDidUpdate() {
        console.log("Updated")
    }
    //needs to be a arrow functions
    incrementCount = () => {
        // this.state.count ++
        this.setState({
            count: this.state.count + 1
        }) 
    }

    // decrementCount = () => {
    //     // this.state.count ++
    //     this.setState({
    //         count: this.state.count - 1
    //     }) 
    // }

    render() {
        console.log("Rendered", this.state)
        return (
            <div>
                <button onClick={this.incrementCount}>+1</button>
                {this.state.count}
                {/* <button onClick={this.decrementCount}>+1</button> */}
            </div>
        )
    }
}


export default Counter