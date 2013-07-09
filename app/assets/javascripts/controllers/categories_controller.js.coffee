RailsEmber.CategoriesController = Ember.ArrayController.extend
  add_category: ->
    RailsEmber.Category.createRecord(
      categoryName: @get('categoryName')
      categoryDescription: @get('categoryDescription')
    )