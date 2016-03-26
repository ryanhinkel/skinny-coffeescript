rDOM = require 'react-dom'
app = require './components'
store = require './store'
connect = require './actions'

render = (data) ->
  # gui = f(store)
  gui = app(data)

  # element = query(DOM)
  element = document.getElementById 'app'

  # render gui into element
  rDOM.render gui, element

# update
update = (data) ->
  render data
  store.data = data

# actions
window.act = connect(store, update)

# inital render
render(store.data)
