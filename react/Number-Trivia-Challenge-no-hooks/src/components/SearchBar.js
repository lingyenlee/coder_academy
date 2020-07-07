import React from 'react';

const SearchBar = (props) => {


  return (
    <div className="ui segment">
      <div className="ui form">
        <div className="field">
          <label>Search a number</label>
          <input
            placeholder="Enter a number"
            type="number"
            min="0"
            value={props.searchValue}
            onChange={(e) => {
              props.onChangeSearchValue(e.target.value)
            }}
            onKeyUp={(e) => {
              if (e.keyCode === 13) {
                props.onEnter()
              }
            }}
          />
        </div>
      </div>
    </div>
  );
}


export default SearchBar;
