class Scabbard.ReferencesController extends Scabbard.ApplicationController
  routingKey: 'references'

  index: (params) ->
    @set('references', Scabbard.Reference.get('all'))
    @set('passage', null)

  show: (params) ->
    @set('reference', Scabbard.Reference.get('all.indexedByUnique.id').get(params.id))

  lookup: ->
    new Batman.Request
      url: @_endpoint
      data: @get('params')
      success: @_lookupFound.bind(@)
      error: @_lookupNotFound.bind(@)

  deleteReference: (reference) ->
    reference.destroy()

  # PRIVATE

  _endpoint: '/references/lookup.json'

  @accessor 'params', get: ->
    passage: @get('passage')

  _lookupFound: (json) ->
    Scabbard.Reference.findOrCreate json.reference, (error, reference) =>
      @unset('passage')
      @redirect reference

  _lookupNotFound: (jqxhr, textStatus, error) ->
    Batman.developer.warn "Implement error case"
