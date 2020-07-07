import React from 'react';
import SearchBar from './SearchBar';
import Number from './Number';
import axios from "axios"
import DropDownSearch from './DropDownSearch';

class App extends React.Component {

  state = {
    searchValue: "",
    text: ""
  }

  handleChange = (newValue) => {
    this.setState({
      searchValue: newValue
    })
  }

  handleSubmit = async () => {

    this.setState({
      searchValue: ""
    })

    let url = `http://numbersapi.com/${this.state.searchValue}/math`

    try {
      const response = await axios.get(url)
      this.setState({
        text: response.data
      })

    } catch (e) {
      console.log(e)
    }
  }


  render() {

    return (
      <div className="ui container" style={{ marginTop: '10px' }}>
        <SearchBar
          searchValue={this.state.searchValue}
          onChangeSearchValue={this.handleChange}
          onEnter={this.handleSubmit}
        />
        <DropDownSearch/>
        <Number text={this.state.text} />

      </div>
    );
  }
}

export default App;
