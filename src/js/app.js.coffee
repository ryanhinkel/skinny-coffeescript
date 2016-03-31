{ render } = require 'react-dom'
app = require './components'

# store is where we keep state
store = message: 'Cafe!'

# app is a component is a function
gui = app store

# element is a dom reference
element = document.getElementById 'app'

# render inserts the gui into the dom
render gui, element

