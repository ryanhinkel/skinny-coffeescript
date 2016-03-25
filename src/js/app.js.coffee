r = require 'react'
rDOM = require 'react-dom'
app = require './components'
store = require './store'

# ui = f(store)
rootApp = app(store)

# element = query(DOM)
rootNode = document.getElementById 'app'

# render ui into element
rDOM.render rootApp, rootNode
