RailsEmber.PinsController = Ember.ArrayController.extend
  save_pin: ->
    image = RailsEmber.Pin.createRecord(
      categoryName: @get('categoryName')
      image: @get('pins')
    )
    image.save();
    @set('pins','')