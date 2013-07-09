# for more details see: http://emberjs.com/guides/models/defining-models/

RailsEmber.List = DS.Model.extend
  categoryName: DS.attr 'string'
  categoryDescription: DS.attr 'string'
  categorySlug: DS.attr 'string'
  pins: DS.hasMany('RailsEmber.Pin')
