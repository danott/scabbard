class Scabbard.PassagesController extends Scabbard.ApplicationController
  routingKey: 'passages'

  index: (params) ->
    @set('passages', Scabbard.Passage.get('all'))

  show: (params) ->
    Scabbard.Passage.find params.id, (err, passage) =>
      @set('passage', passage)
