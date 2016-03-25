r = require 'react'
fac = r.createFactory
el = r.createElement

div = fac('div')
span = fac('span')
h1 = fac('h1')
h2 = fac('h2')
h3 = fac('h3')

skill = (skill) ->
  div { key: skill, className: 'skill' },
    skill

person = (person) ->
  fullName = "#{person.firstName} #{person.lastName}"

  div { className: 'person' },
    h2 { className: 'full-name' },
      fullName
    h3 {}, "Skills"
    div {},
      person.skills.map skill

app = (props) ->
  div { className: 'app-root' },
    person (props.people[props.selectedPerson])

module.exports = app
