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
#= require_tree ./services

Batman.config.pathToHTML = '/assets/html'
Batman.config.usePushState = false

class Scabbard extends Batman.App
  @resources 'passages', only: ['index', 'show'], ->
    @collection 'lookup'

  @root 'passages#index'

(global ? window).Scabbard = Scabbard
