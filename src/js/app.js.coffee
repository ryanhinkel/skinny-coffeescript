rDOM = require 'react-dom'
app = require './components'
store = require './store'
connect = require './actions'

# gui = f(store)
gui = app(store.data)

# element = query(DOM)
element = document.getElementById 'app'

# render gui into element
rDOM.render gui, element

# actions
window.act = connect(store, (result) -> result)
