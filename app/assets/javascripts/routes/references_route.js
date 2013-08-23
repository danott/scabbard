Scabbard.ReferencesRoute = Ember.Route.extend({
  model: function(params) {
    return Scabbard.Reference.find();
  },
  setupController: function(controller, model) {
    controller.set('references', model);
    controller.set('passage', '');
  }
});
