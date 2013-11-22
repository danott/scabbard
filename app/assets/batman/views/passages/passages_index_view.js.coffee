class Scabbard.PassagesIndexView extends Batman.View
  viewDidAppear: ->
    @set('passageQuery', new Scabbard.PassageQuery())

  performPassageQuery: ->
    @get('passageQuery').perform (passage) =>
      Batman.redirect passage
