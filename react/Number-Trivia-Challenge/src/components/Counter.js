// import React, { Component, useState, useEffect } from 'react'

// class Counter extends Component {

//     state = {
//         count: 0,
//         inputValue: ""
//     }

//     componentDidMount() {
//         // console.log("mount")
//     }

//     componentDidUpdate() {
//         // console.log("did update")
//     }

//     render() {
//         return (
//             <div>
//                 <button onClick={() => this.setState({ count: this.state.count + 1 })}>+1</button>
//                 {this.state.count}

//                 {/* <input
//                     type="text"
//                     value={this.state.inputValue}
//                     onChange={e => this.setState({ inputValue="e" })} />
//                 {this.state.inputValue} */}
//             </div>
//         )
//     }
// }


// export const FuncCounter = () => {

//     const [count, setCount] = useState(0)
//     const [input, setInputValue] = useState('')

//     // useEffect(() => {
//     //     console.log("Func mounted")
//     // }, [])

//     useEffect(() => {
//         setCount(count + 1)
//     })

//     return (

//         <div>
//             Functional Counter
//             <button onClick={() => setCount(count + 1)}>
//                 +1
//             </button>
//             <input
//                 type="text"
//                 value={inputValue}
//                 onChange={e => setInputValue(e.target.value)}
//             />
//             {inputValue}
//         </div>
//     )


// }




// export default Counter
