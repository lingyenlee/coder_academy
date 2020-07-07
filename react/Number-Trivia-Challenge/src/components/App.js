import React, { useState, useEffect } from 'react';
import axios from 'axios';
import SearchBar from './SearchBar';
import Number from './Number';
import Counter, { FuncCounter } from './Counter';
function App() {

  const [number, setNumber] = useState('')

  const onSearchSubmit = async (numberSel, option) => {
    const response = await axios.get(
      `http://numbersapi.com/${numberSel}/${option}`
    );
    setNumber(response.data)
  }

  // const onSearchSubmit = useEffect(() => {
  //   async function fetchData(numberSel, option) {
  //     const response = await axios.get(
  //       `http://numbersapi.com/${numberSel}/${option}`
  //     );
  //     await setNumber(response.data)
  //   }
  //   fetchData()
  // })

  return (
    <div className="ui container" style={{ marginTop: '10px' }}>
      <SearchBar onSubmit={onSearchSubmit} />
      <Number number={number} />
      {/* <Counter/>
      <FuncCounter/> */}
    </div>
  );
}

export default App;
