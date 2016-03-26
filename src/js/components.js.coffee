r = require 'react'
fac = r.createFactory
el = r.createElement

#
# factories create functions
# that return a single react
# element

div = fac('div')
span = fac('span')

#
# components in their simplest
# form are pure functions

app = (props) ->
  div { className: 'app-root' },
    span {}, '☕ Cafe!'

module.exports = app
