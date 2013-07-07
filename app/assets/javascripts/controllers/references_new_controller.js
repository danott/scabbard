Scabbard.ReferencesNewController = Ember.ObjectController.extend({
  passageQuery: function() {
    var _controller = this;
    jQuery.getJSON('/references/lookup.json', {passage: _controller.get('passage')}).done(function(json) {
      var reference = Scabbard.Reference.createRecord(json.reference);
      reference.save();
      _controller.transitionToRoute('references.reference', reference);
    });
  }
});
