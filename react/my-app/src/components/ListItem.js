import React, { Component } from 'react'

class ListItem extends Component {
    constructor(props) {
        super(props)
        this.state = {
            isComplete: false
        }
    }

    // handleClick = () => {
    //     this.setState({ isComplete: !this.state.isComplete })
    // }

    render() {
        const style = {
            textDecoration: this.state.isComplete ? "line-through" : "none"
        }
        console.log(this.state)
        return (
            <div>
                <span style={style}>{this.props.todo}</span>

                <button
                    onClick={() => {
                        this.setState({ isComplete: !this.state.isComplete })
                    }}>toggle</button>
                {/* <button onClick={this.handleClick}>TOGGLE</button> */}
            </div>
        )

    }
}

export default ListItem