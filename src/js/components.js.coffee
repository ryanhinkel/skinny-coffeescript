{ div, span } = require './elements'

# components in their simplest
# form are pure functions

app = (props) ->
  div { className: 'app-root' },
    span {}, props.message

module.exports = app
