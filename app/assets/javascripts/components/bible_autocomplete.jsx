var BibleAutocomplete = React.createClass({
  getDefaultProps() {
    return {
      name: "query_string",
    }
  },

  getInitialState() {
    return {
      value: "",
    }
  },

  render() {
    return (
      <div>
        <input
          ref="input"
          autofocus
          autoComplete="off"
          value={this.state.value}
          onChange={this.handleChange}
          name={this.props.name}
          placeholder="Isa 40:8"
          />
        {this.getSuggestions().map((suggestion) => (
          <div key={suggestion}>
            <a
              href="javascript://"
              onClick={this.handleClick(suggestion)}
              >
              {suggestion}
            </a>
          </div>
        ))}
      </div>
    )
  },

  handleClick(value) {
    return () => {
      this.setState({ value: `${value} ` }, () => this.refs.input.focus())
    }
  },

  handleChange({ target: { value }}) {
    this.setState({ value })
  },

  getSuggestions() {
    const parts = this.state.value.split(" ").filter((s) => s.length > 0)
    const books = findBook(parts[0] || "")

    if (books.length !== 1) {
      return books.map((book) => book.name)
    }

    return books.map((book) => book.name)
  }
})
