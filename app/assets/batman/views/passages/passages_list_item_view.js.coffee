class Scabbard.PassagesListItemView extends Batman.View
  setEditing: ->
    @set('editing', true)

  unsetEditing: ->
    @unset('editing')

  deletePassage: ->
    @get('passage').destroy()
