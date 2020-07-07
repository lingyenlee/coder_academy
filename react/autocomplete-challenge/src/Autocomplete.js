import React, { useState } from 'react'

const Autocomplete = ({ possibleSearchResults }) => {

    const [inputValue, setInputValue] = useState('')
    const [filteredOptions, setFilteredptions] = useState([])
    const [showOptions, setShowOptions] = useState(false)

    // console.log(inputValue)

    const handleChange = (e) => {
        setInputValue(e.target.value)

        const filtered = possibleSearchResults.filter(result => {
            return result.toLowerCase().includes(inputValue.toLowerCase())
        })
        setFilteredptions(filtered)
        setShowOptions(!showOptions)
    }

    const handleKeyUp = (e) => {
        if (e.keyCode === 13) {
            setInputValue('')
        }
    }

    const handleClick = () => {
        setInputValue('')
        setFilteredptions([])
        setShowOptions(!showOptions)

    }
    // console.log(possibleSearchResults)
    return (
        <>
            <button onClick={() => handleClick()}>Reset</button>
            <input
                value={inputValue}
                onChange={handleChange}
                onKeyUp={(e) => handleKeyUp(e)}
            />
            <ul>
                {filteredOptions.map((option, i) =>
                    <li key={i} >{option}</li>)
                }
            </ul>


        </>
    )
}

export default Autocomplete