r = require 'react'
rDOM = require 'react-dom'
app = require './components'

el = r.createElement

# store (db, state)
store =
  selectedPerson: 3
  people: [
    firstName: 'Ryan',
    lastName: 'Hinkel',
    skills: ['React', 'Coffeescript', 'Webpack']
  ,
    firstName: 'Beth',
    lastName: 'Simpson',
    skills: ['Sleeping', 'Eating', 'Coding']
  ,
    firstName: 'Bill',
    lastName: 'Frank',
    skills: ['Woodsman', 'Shepard', 'Miner', 'Settler']
  ,
    firstName: 'Ben',
    lastName: 'Bloey',
    skills: ['Pull shot', 'Push shot', 'Ginsu', 'Pimplepopper']
  ,
    firstName: 'Randy',
    lastName: 'Butternubs',
    skills: ['JSX', 'Drugs', 'Rock & Roll']
  ]

# ui = f(store)
rootApp = el app, store

# element = query(DOM)
rootNode = document.getElementById 'app'

# render ui into element
rDOM.render rootApp, rootNode
