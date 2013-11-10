class Scabbard.ReferencesListView extends Batman.View
  @accessor 'toggleEditingText', get: ->
    if @get('editing') then 'Done' else 'Edit'

  toggleEditing: ->
    @propagateToSubviews('unsetEditing')
    if @get('editing') then @unset('editing') else @set('editing', true)