import React, { Component } from 'react'

class EntryForm extends Component {

    state = {
        entry: ""
    }

    onTextAreaChange = (e) => {
        this.setState({
            entry: e.target.value
        })
    }

    onFormSubmit = (e) => {
        e.preventDefault()
        const { entry } = this.state
        const { onEntryFormSubmit, category } = this.props

        if (entry) {
            return onEntryFormSubmit({ category, entry })
        }
        return this.setState({ errorMessage: "Entry cannot be blank" })
    }

    render() {

        const { entry } = this.state


        return (
            <form onSubmit={this.onFormSubmit}>
                <div>
                    <textarea
                        value={entry}
                        onChange={this.onTextAreaChange}
                    ></textarea>
                </div>
                <input
                    type="submit"
                    value="create new entry"
                />
            </form>
        )
    }
}

export default EntryForm
