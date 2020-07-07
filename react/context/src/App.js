import React from 'react';
// import Card from './Card'
// import Header from "./Header"
// import AppContext, { themes, CustomAppProvider } from "./context"
import AppContext, { CustomAppProvider } from './context'
// import { themes } from './context'
import Form from './Form'

const App = () => {

  // const [currentTheme, setCurrentTheme] = useState(themes.light)


  return (
    /* <CustomAppProvider>
      <Header />
      <Card />
    </CustomAppProvider> */

    /* <AppContext.Provider value={{ currentTheme, toggleTheme, userEmail: "mike@gmail.com" }}>
      <Header />
      <Card />

    </AppContext.Provider> */

    <CustomAppProvider>
      <Form />
    </CustomAppProvider>
    // implement a button which allows the user to select the theme
  )
}

export default App