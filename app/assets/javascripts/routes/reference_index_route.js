Scabbard.ReferencesIndexRoute = Ember.Route.extend({
  model: function(params) {
    return Scabbard.Reference.find(params.reference_id)
  }
});
