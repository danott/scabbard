class Scabbard.PassagesIndexView extends Batman.View
  viewDidAppear: ->
    @set('lookup', new Scabbard.Lookup())

  performLookup: ->
    @get('lookup').perform (passage) =>
      Batman.redirect passage
