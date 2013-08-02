// Scabbard.RESTAdapter = DS.RESTAdapter.extend({
//   buildURL: function(record, suffix) {
//     return this._super(record, suffix) + ".json";
//   }
// });

Scabbard.Store = DS.Store.extend({
  adapter: DS.LSAdapter
});

DS.Model.reopenClass({
  exists: function(key, value) {
    return this.find().getEach(key).indexOf(value) > -1;
  }
});
