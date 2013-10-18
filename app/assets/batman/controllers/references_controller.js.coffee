class Scabbard.ReferencesController extends Scabbard.ApplicationController
  routingKey: 'references'

  index: (params) ->
    @set('references', Scabbard.Reference.get('all'))
    @set('passage', null)

  show: (params) ->
    @set('reference', Scabbard.Reference.get('all.indexedByUnique.id').get(params.id))

  lookup: ->
    jqxhr = jQuery.getJSON(@_endpoint, {passage: @get('passage')})
    jqxhr.done(@_lookupFound.bind(@))
    jqxhr.fail(@_lookupNotFound.bind(@))
    jqxhr.always(@_lookupFinished.bind(@))

  deleteReference: (reference) ->
    reference.delete()
    reference.save()

  # PRIVATE

  _endpoint: '/references/lookup.json'

  _lookupFound: (json, textStatus, jqxhr) ->
    Scabbard.Reference.findOrCreate json.reference, (error, reference) =>
      @unset('passage')
      @redirect reference

  _lookupNotFound: (jqxhr, textStatus, error) ->
    null

  _lookupFinished: (mixedArgumentA, textStatus, mixedArgumentB) ->
    null
