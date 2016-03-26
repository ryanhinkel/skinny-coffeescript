r = require 'react'
fac = r.createFactory

# factories create functions
# that return a single react
# element
module.exports =
  div: fac('div')
  span: fac('span')
  h1: fac('h1')
  h2: fac('h2')
  h3: fac('h3')
