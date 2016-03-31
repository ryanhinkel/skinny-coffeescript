{ render } = require 'react-dom'
{ renderToStaticMarkup } = require 'react-dom/server'
app = require './components'
store = require './store'

# app is a component is a function
gui = app(store)

# element is a dom reference
element = document.getElementById 'app'

# render inserts the gui into the dom
render gui, element

# render gui into string
console.log renderToStaticMarkup(gui)
