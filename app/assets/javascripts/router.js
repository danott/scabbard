Scabbard.Router.map(function() {
  this.resource('references', function() {
    this.route('reference', {path: ':reference_id'});
    this.route('new');
  });
});
