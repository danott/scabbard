Scabbard.ReferencesController = Ember.Controller.extend({
  lookup: function() {
    var jqxhr = jQuery.getJSON(this._endpoint, {passage: this.get('passage')});
    jqxhr.done(this._lookupFound.bind(this));
    jqxhr.fail(this._lookupNotFound.bind(this));
    jqxhr.always(this._lookupFinished.bind(this));
  },

  deleteReference: function(reference) {
    reference.deleteRecord();
    reference.save();
  },

  // PRIVATE

  _endpoint: '/references/lookup.json',

  _lookupFound: function(json, textStatus, jqxhr) {
    var reference = Scabbard.Reference.findByIdOrCreate(json.reference);
    this.transitionToRoute('reference', reference);
  },

  _lookupNotFound: function(jqxhr, textStatus, error) {
  },

  _lookupFinished: function(mixedArgumentA, textStatus, mixedArgumentB) {
  }
});
