import React, { useState, useEffect } from 'react';
import currencies from "./supported-currencies.json"
import axios from 'axios'


function App() {

  const [currency, setCurrency] = useState("AUD")
  const [bitcoinData, setBitcoinData] = useState({})

  useEffect(() => {
    // console.log("inside of useEffect")
    // const data = {
    //   "2020-05-30": 14323.3573,
    //   "2020-05-31": 14314.8615,
    //   "2020-06-01": 14196.8823,
    //   "2020-06-02": 14779.0271,
    //   "2020-06-03": 13895.8626,
    //   "2020-06-04": 13832.7898,
    // }
    // setBitcoinData(data)



    const loadData = async () => {
      let mounted = true;
      const url = 'https://api.coindesk.com/v1/bpi/historical/close.json?currency='
      const response = await axios.get(`${url}${currency}`);
      // We have a response, but let's first check if component is still mounted
      if (mounted) {
        console.log(response.data)
        setBitcoinData(response.data.bpi);
      }
      mounted = false
    };
    loadData();

  }, [currency])


  return (

    <div className="App">
      <div>Select your currency: </div>
      <select
        value={currency}
        onChange={e => setCurrency(e.target.value)}
      >
        {currencies.map(currencyObj =>
          <option value={currencyObj.currency} key={currencyObj.currency}>
            {currencyObj.country}
          </option>
        )}

      </select>
      <h1>Bitcoin Data for {currency}</h1>


      {Object.keys(bitcoinData).map((date) =>
        <div key={date}>Date: {date} Value: {bitcoinData[date]}</div>
      )}

    </div>
  );
}

export default App;
