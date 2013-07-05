Scabbard.RESTAdapter = DS.RESTAdapter.extend({
  buildURL: function(record, suffix) {
    return this._super(record, suffix) + ".json";
  }
});

Scabbard.Store = DS.Store.extend({
  adapter: Scabbard.RESTAdapter
});
