import React, { useContext } from 'react'
import AppContext from './context'

const ThemeButton = ({ text }) => {

    const appContext = useContext(AppContext)

    // This button should use the current theme
    return (
        <button
            style={appContext.theme}
            onClick={appContext.toggleTheme}
        >{text}</button>
    )
}

export default ThemeButton