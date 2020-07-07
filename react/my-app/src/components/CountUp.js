import React, { Component } from 'react'
import AddButton from "./AddButton"

class CountUp extends Component {

    constructor(props) {
        super(props)
        this.state = {
            counter: 0
        }
    }

    addNumber = (num) => {
        this.setState({
            counter: this.state.counter + num
        })
    } 
    // addFive = () => {
    //     this.setState({
    //         counter: this.state.counter + 5
    //     })
    // }

    // addTen = () => {
    //     this.setState({
    //         counter: this.state.counter + 10
    //     })
    // }

    // addFifty = () => {
    //     this.setState({
    //         counter: this.state.counter + 50
    //     })
    // }

    // addHundred = () => {
    //     this.setState({
    //         counter: this.state.counter + 100
    //     })
    // }

    render() {
        return (
            <div>
                <h1>{this.state.counter}</h1>
                <div>
                    <AddButton onClick={this.addNumber} number={5}/>
                    <AddButton onClick={this.addNumber} number={10}/>
                    <AddButton onClick={this.addNumber} number={50}/>
                    <AddButton onClick={this.addNumber} number={100}/>
                </div>
            </div>
        )
    }
}

export default CountUp
