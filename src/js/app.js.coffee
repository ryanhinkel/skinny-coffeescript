rDOM = require 'react-dom'
rDOM.server = require 'react-dom/server'
app = require './components'
store = require './store'

# gui = f(store)
gui = app(store)

# element = query(DOM)
element = document.getElementById 'app'

# render gui into element
rDOM.render gui, element

# render gui into string
console.log rDOM.server.renderToStaticMarkup(gui)
