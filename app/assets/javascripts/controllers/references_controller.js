Scabbard.ReferencesController = Ember.ArrayController.extend({
  lookup: function() {
    var jqxhr = jQuery.getJSON(this.endpoint, {passage: this.get('passage')});
    jqxhr.done(this.lookupFound.bind(this));
    jqxhr.fail(this.lookupNotFound.bind(this));
    jqxhr.always(this.lookupFinished.bind(this));
  },

  endpoint: '/references/lookup.json',

  lookupFound: function(json, textStatus, jqxhr) {
    console.log("lookup found", arguments);
    var reference;
    if (Scabbard.Reference.exists('id', json.reference.id)) {
      reference = Scabbard.Reference.find(json.reference.id);
    } else {
      reference = Scabbard.Reference.createRecord(json.reference);
      reference.save();
    }
    this.transitionToRoute('reference', reference);
  },

  lookupNotFound: function(jqxhr, textStatus, error) {
    console.log("lookup not found", arguments);
  },

  lookupFinished: function(mixedA, textStatus, mixedB) {
    console.log("lookup finished", arguments);
  },

  removeReference: function(reference) {
    reference.deleteRecord();
    reference.save();
  }
});
