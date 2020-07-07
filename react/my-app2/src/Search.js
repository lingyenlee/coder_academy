import React from 'react'

const Search = (props) => {

    // state = {
    //     searchValue: ""
    // }


    // handleChange = (e) => {
    //     console.log(e.target.value)
    //         this.setState({
    //             searchValue: e.target.value
    //         })

    // }

    // handleSubmit = () => {

    //     this.setState({
    //         searchValue: ""
    //     })
    // }
    return (
        <div>
            <input
                type="text"
                value={props.searchValue}
                onChange={(e) => {
                    console.log(e.target.value)
                    props.onSearchValueChange(e.target.value)
                }}
                // onKeyPress={(e) => {
                //     console.log(e)
                // }}
                onKeyUp={(e) => {
                    if (e.keyCode ===13) {
                        props.onEnter()
                        // console.log("ENtered")
                        // console.log(e.keyCode)
                    }
                 
                }}
                // onKeyDown={(e) => {
                //     console.log(e.keyCode)
                // }}

            // value={this.state.searchValue}
            // onChange={this.handleChange}
            />
            {/* <span>{this.state.searchValue}</span> */}
        </div>
    )
}


export default Search
