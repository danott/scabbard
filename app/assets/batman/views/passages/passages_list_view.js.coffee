class Scabbard.PassagesListView extends Batman.View
  source: '/passages/list'

  @accessor 'toggleEditingText', get: ->
    if @get('editing') then 'Done' else 'Edit'

  toggleEditing: ->
    @propagateToSubviews('unsetEditing')
    if @get('editing') then @unset('editing') else @set('editing', true)
