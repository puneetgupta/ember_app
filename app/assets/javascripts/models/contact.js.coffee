# for more details see: http://emberjs.com/guides/models/defining-models/

RailsEmber.Contact = DS.Model.extend
  firstName: DS.attr 'string'
  lastName: DS.attr 'string'