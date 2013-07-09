RailsEmber.ListsIndexController = Ember.ArrayController.extend
  add_category: ->
    $('#add_category').lightbox_me();

  submit: ->
    category = RailsEmber.List.createRecord(
      categoryName: @get('categoryName')
      categoryDescription: @get('categoryDescription')
      categorySlug: @get('categoryName').trim().replace(/\s+/g, '_');
    )
    category.save();
    @set('categoryName','')
    @set('categoryName','')
    $('#add_category').css('display','none');
    $('.lb_overlay').remove();

RailsEmber.ListsShowController = Ember.ObjectController.extend
  save_image: ->
    image = RailsEmber.Pin.createRecord(
      categoryName: @get('categoryName')
      image: @get('image')
      listId: @get('id')
    )
    image.save();
    @set('image','')

  save_pin: ->
    image = RailsEmber.Pin.createRecord(
      categoryName: @get('categoryName')
      image: @get('pins')
      pins: @get('pins')
    )
    image.commit();
    @set('pins','')