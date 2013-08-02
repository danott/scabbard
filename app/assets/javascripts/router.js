Scabbard.Router.reopen({
  location: 'history'
});

Scabbard.Router.map(function() {
  this.resource('references');
  this.resource('reference', {path: 'references/:reference_id'});
});
