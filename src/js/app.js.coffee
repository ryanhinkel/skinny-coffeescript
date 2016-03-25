r = require 'react'
rDOM = require 'react-dom'
app = require './components'

el = r.createElement

# store (db, state)
store =
  person:
    firstName: 'Ryan',
    lastName: 'Hinkel',
    skills: ['React', 'Coffeescript', 'Webpack']

# ui = f(store)
rootApp = el app, store

# element = query(DOM)
rootNode = document.getElementById 'app'

# render ui into element
rDOM.render rootApp, rootNode
