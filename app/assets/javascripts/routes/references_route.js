Scabbard.ReferencesRoute = Ember.Route.extend({
  model: function(params) {
    return Scabbard.Reference.find();
  }
});
