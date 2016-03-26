r = require 'react'
fac = r.createFactory
el = r.createElement

#
# factories create functions
# that return a single react
# element

div = fac('div')
span = fac('span')
h1 = fac('h1')
h2 = fac('h2')
h3 = fac('h3')

#
# components in their simplest
# form are pure functions
c = {}

c.skill = (skill) ->
  div { key: skill, className: 'skill' },
    skill

c.person = (person) ->
  fullName = "#{person.firstName} #{person.lastName}"

  div { className: 'person block' },
    h2 { className: 'full-name' },
      fullName
    h3 {}, "Skills"
    div {},
      person.skills.map c.skill

#
# views are high level
# components
v = {}

v.index = (props) ->
  selected = props.selectedPerson
  props.people.map (person, i) ->
    className = if i is selected then 'block active' else 'block'
    div { key: i, className: className },
      "#{person.firstName} #{person.lastName}"

v.show = (person) ->
  c.person person

#
# top level component

app = (props) ->
  div { className: 'app-root' },
    v.index props
    # v.show (props.people[props.selectedPerson])

module.exports = app
