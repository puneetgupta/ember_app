# for more details see: http://emberjs.com/guides/models/defining-models/

RailsEmber.Category = DS.Model.extend
  categoryName: DS.attr 'string'
  categoryDescription: DS.attr 'string'
  categorySlug: DS.attr 'string'
