r = require 'react'

fac = r.createFactory
el = r.createElement

div = fac('div')
span = fac('span')

module.exports = app =
  div className: 'app-root',
    span className: 'message', 'Hello'
