class Scabbard.Lookup extends Batman.Object
  perform: (callback) ->
    @set('callback', callback)
    @set('performing', true)
    @unset('errors')

    new Batman.Request
      url: @_endpoint
      data: @_params()
      success: @_lookupFound.bind(@)
      error: @_lookupNotFound.bind(@)

  _endpoint: '/passages/lookup.json'

  _params: ->
    passage: @get('passage')

  _lookupFound: (json) ->
    Scabbard.Passage.findOrCreate json.passage, (error, passage) =>
      @unset('passage', 'performing')
      @get('callback')?(passage)

  _lookupNotFound: (jqxhr) ->
    @unset('performing')
    @set('errors', new Batman.ErrorsSet('passage', 'could not be found'))
