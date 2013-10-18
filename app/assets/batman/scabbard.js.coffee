#= require batman/es5-shim

#= require batman/batman
#= require batman/batman.rails

#= require jquery
#= require batman/batman.jquery

#= require_self

#= require_tree ./lib
#= require_tree ./controllers
#= require_tree ./models
#= require_tree ./views

Batman.config.pathToHTML = '/assets/html'

class Scabbard extends Batman.App
  @resources 'references', only: ['index', 'show'], ->
    @collection 'lookup'

  @root 'references#index'

(global ? window).Scabbard = Scabbard
