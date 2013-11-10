class Scabbard.ReferencesController extends Scabbard.ApplicationController
  routingKey: 'references'

  index: (params) ->
    @set('references', Scabbard.Reference.get('all'))

  show: (params) ->
    Scabbard.Reference.find params.id, (err, reference) =>
      @set('reference', reference)
