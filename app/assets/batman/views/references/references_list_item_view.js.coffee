class Scabbard.ReferencesListItemView extends Batman.View
  setEditing: ->
    @set('editing', true)

  unsetEditing: ->
    @unset('editing')

  deleteReference: (reference) ->
    reference.destroy()
