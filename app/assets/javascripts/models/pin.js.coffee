# for more details see: http://emberjs.com/guides/models/defining-models/

RailsEmber.Pin = DS.Model.extend
  categoryName: DS.attr 'string'
  image: DS.attr 'string'
  listId: DS.attr 'number'
  pins: DS.attr 'string'
  list: DS.belongsTo('RailsEmber.List')
