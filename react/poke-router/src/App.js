import React, { Component } from 'react'
import { BrowserRouter, Route, Link } from "react-router-dom";
import Homeview from './Homeview'
import CategorySelectionView from './CategorySelectionView'
import NewEntryView from './NewEntryView'

class App extends Component {

    state = {
        entries: [],
        categories: ["food", "thoughts", "other"]
    }

    componentDidUpdate() {
        console.log(this.state)
    }

    onEntryFormSubmit = (value) => {
        this.setState(state => {
            return { entries: [...state.entries, value] }
        })
    }

    render() {
        const { categories } = this.state

        return (
            <BrowserRouter>
                <div>

                    <Route exact path="/" component={Homeview} />

                    <Route
                        exact path="/category"
                        render={props => <CategorySelectionView {...props} categories={categories} />}
                    />
                    <Route exact path="/entry/new/:id"
                           render={props =>
                             <NewEntryView {...props}
                                categories={categories}
                                onEntryFormSubmit={this.onEntryFormSubmit}
                            />}
                    />
                </div>
            </BrowserRouter>
        )
    }
}

export default App
