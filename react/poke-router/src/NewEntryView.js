import React, { Component } from 'react'
import { Link } from 'react-router-dom'
import EntryForm from './EntryForm';

class NewEntryView extends Component {

    state = {
        errorMessage: "",
        category: null
    }
    componentDidMount() {
        const { id } = this.props.match.params;
        const { categories } = this.props

        if (!categories[id]) {
            return this.setState({
                errorMessage: "Invalid category"
            })
        }

        return this.setState({
            category: categories[id]
        })

    }
    render() {
        console.log(this.props.categories)
        const { errorMessage, category } = this.state
        const { onEntryFormSubmit } = this.props

        return (
            <div>
                {errorMessage}
                {category &&

                    <div>
                        <Link to="/category"><button>Back to categories</button></Link>
                        <h1>New {category} entry</h1>
                        <EntryForm
                            category={category}
                            onEntryFormSubmit={onEntryFormSubmit}
                        />
                    </div>

                }
            </div>

        )
    }
}

export default NewEntryView
