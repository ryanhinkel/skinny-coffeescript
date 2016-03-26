assign = Object.assign

actions =
  navigate: (store, route) ->
    assign {}, store,
      view: route

  selectPerson: (store, index) ->
    assign {}, store,
      selectedPerson: index

#
#
# Complex part
module.exports = (store, callback) ->
  (action, payload) ->
    action = actions[action]
    result = action.call null, store.data, payload
    callback result
