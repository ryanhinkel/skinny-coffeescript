r = require 'react'

component = r.createClass
fac = r.createFactory
el = r.createElement

div = fac('div')
span = fac('span')
h1 = fac('h1')
h2 = fac('h2')


skill = (skill) ->
  div key: skill, className: 'skill', skill

app = (props) ->
  person = props.person
  fullName = "#{person.firstName} #{person.lastName}"

  div { className: 'app-root' },
    div { className: 'person' },
      h2 { className: 'full-name' },
        fullName
      div {},
        person.skills.map skill

module.exports = app
