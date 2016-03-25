r = require 'react'
rDOM = require 'react-dom'
app = require './components'

el = r.createElement

state =
  person:
    firstName: 'Ryan',
    lastName: 'Hinkel',
    skills: ['React', 'Coffeescript', 'Webpack']

rootApp = el app, state
rootNode = document.getElementById 'app'

rDOM.render rootApp, rootNode
