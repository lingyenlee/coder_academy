import React, { useContext } from 'react'
import AppContext from "./context"


const ThemeToggler = () => {

    const appContext = useContext(AppContext)

    return (
        <div>
            <button onClick={appContext.toggleTheme}>Toggle theme</button>
        </div>
    )
}

export default ThemeToggler
