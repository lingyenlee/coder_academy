import React, { Component } from 'react';

class ColorPicker extends Component {
    constructor(props) {
        super(props)
        this.state = {
            textColor: this.props.initialTextColor
        }

    }

    updateColor = (color) => {
        this.setState({
            textColor: color
        })

    }

    render() {
        console.log("props",this.props)
        console.log("state", this.state.textColor)
        const textStyle = {
            color: this.state.textColor
        }
        console.log(textStyle)
        return (
            <div>
                <ul>
                    <li onClick={() => { this.updateColor("red") }}>Red</li>
                    <li onClick={() => { this.updateColor("blue") }}>Blue</li>
                    <li onClick={() => { this.updateColor("green") }}>Green</li>
                </ul>

                <p style={textStyle}>The colored text</p>
            </div>
        )
    }

}


export default ColorPicker