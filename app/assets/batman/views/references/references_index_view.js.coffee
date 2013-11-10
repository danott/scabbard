class Scabbard.ReferencesIndexView extends Batman.View
  viewDidAppear: ->
    @set('lookup', new Scabbard.Lookup())

  performLookup: ->
    @get('lookup').perform (reference) =>
      Batman.redirect reference
