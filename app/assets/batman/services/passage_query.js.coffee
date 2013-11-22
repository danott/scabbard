class Scabbard.PassageQuery extends Batman.Object
  perform: (callback) ->
    @set('callback', callback)
    @set('performing', true)
    @unset('errors', 'passage')

    new Batman.Request
      url: @_endpoint
      data: @_params()
      success: @_passageFound.bind(@)
      error: @_passageNotFound.bind(@)

  _endpoint: '/passages/query.json'

  _params: ->
    query_string: @get('queryString')

  _passageFound: (json) ->
    @unset('queryString', 'performing')
    Scabbard.Passage.findOrCreate json.passage, (error, passage) =>
      @set('passage', passage)
      @get('callback')?(passage)

  _passageNotFound: (jqxhr) ->
    @unset('performing')
    @set('errors', new Batman.ErrorsSet('passage', 'could not be found'))
