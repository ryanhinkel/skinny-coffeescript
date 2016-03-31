{ render } = require 'react-dom'
app = require './components'
store =
  message: '☕ ⚛'

# gui = f(store)
gui = app(store)

# element = query(DOM)
element = document.getElementById 'app'

# render gui into element
render gui, element
