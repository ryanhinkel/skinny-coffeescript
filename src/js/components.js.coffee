{ div, span, h2, h3 } = require './elements'

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
