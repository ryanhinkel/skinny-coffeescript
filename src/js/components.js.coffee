{ div, h2, h3 } = require './elements'

#
# components in their simplest
# form are pure functions
c = {}

c.skill = (skill) ->
  div { key: skill, className: 'skill' },
    skill

c.person = (person) ->
  fullName = "#{person.firstName} #{person.lastName}"
  close = () -> act('navigate', 'index')

  div { className: 'person block',  onClick: close },
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
  select = (i) ->
    () -> act('selectPerson', i)

  open = (i) ->
    () ->
      act('selectPerson', i)
      act('navigate', 'show')

  props.people.map (person, i) ->
    className = if i is selected then 'block active' else 'block'

    div { key: i, className: className, onClick: select(i), onDoubleClick: open(i) },
      "#{person.firstName} #{person.lastName}"

v.show = (props) ->
  c.person props.people[props.selectedPerson]

#
# top level component

app = (props) ->
  div { className: 'app-root' },
    v[props.view] props

module.exports = app
