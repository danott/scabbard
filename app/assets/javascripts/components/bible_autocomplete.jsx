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
          autoFocus
          autoComplete="off"
          value={this.state.value}
          onChange={this.handleChange}
          name={this.props.name}
          placeholder="Isaiah 40:8"
          />
        <div>
          {this.getSuggestions().normalized}
        </div>
        <div>
          {this.getSuggestions().suggesting}
        </div>
        {this.getSuggestions().suggestions.map(({ abbreviated, normalized }) => (
          <div key={abbreviated}>
            <a
              href="javascript://"
              onClick={this.handleClick(normalized)}
              >
              {abbreviated}
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
    return suggestions(this.state.value)
  }
})
