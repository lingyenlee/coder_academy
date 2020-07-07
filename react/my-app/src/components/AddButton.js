import React from 'react'

const AddButton = (props) => {


    return (
        
        <div>
            <button onClick={() => 
            {console.log(props.number)
            props.onClick(props.number)}
            }
            >
            <span>{props.number}</span>
          
            </button>
        </div>
    )

}

export default AddButton
