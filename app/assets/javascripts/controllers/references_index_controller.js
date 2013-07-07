Scabbard.ReferencesIndexController = Ember.ArrayController.extend({
  removeReference: function(reference) {
    reference.deleteRecord();
    reference.save();
  }
});
