Scabbard.Reference = DS.Model.extend({
  title: DS.attr('string'),
  html: DS.attr('string')
});

Scabbard.Reference.FIXTURES = [
  {
    id: 1,
    title: 'Isaiah 40:4',
    html: 'This would be the HTML'
  },
  {
    id: 2,
    title: '2 Timothy 1:7',
    html: 'This would be the HTML'
  },
  {
    id: 3,
    title: 'Matt 11:4',
    html: 'This would be the HTML'
  }
]
