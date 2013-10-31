class Scabbard.ReferencesController extends Scabbard.ApplicationController
  routingKey: 'references'

  index: (params) ->
    @set('references', Scabbard.Reference.get('all'))
    @set('lookup', new Scabbard.Lookup())

  show: (params) ->
    @set('reference', Scabbard.Reference.get('all.indexedByUnique.id').get(params.id))

  performLookup: ->
    @get('lookup').perform (reference) =>
      @redirect reference

  deleteReference: (reference) ->
    reference.destroy()
