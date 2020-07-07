import React, {useState} from 'react'

export const themes = {
  light: {
    color: "black",
    background: "white"
  },
  dark: {
    color: "white",
    background: "black"
  }
}

const AppContext = React.createContext()

export const CustomAppProvider = (props) => {

  const [theme, setTheme] = useState(themes.light)
  const toggleTheme = () => {
    const newTheme = theme === themes.light ? themes.dark : themes.light
    setTheme(newTheme)
  }


  return (
    <AppContext.Provider value={{ theme, toggleTheme }}>
      {props.children}
    </AppContext.Provider>
  )
}


export default AppContext

// import React from 'react'

// export const themes = {
//     light: {
//         color: 'black',
//         background: 'white'
//     },
//     dark: {
//         color: 'white',
//         background: 'black'
//     },
//     ocean: {
//         color: 'blue',
//         background: 'grey'
//     }
// }


// const AppContext = React.createContext()

// export default AppContext;