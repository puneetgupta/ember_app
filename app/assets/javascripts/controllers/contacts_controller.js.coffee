RailsEmber.ContactsController = Ember.ArrayController.extend
  submit: ->
    RailsEmber.Contact.createRecord(
      firstName: @get('firstName')
      lastName: @get('lastName')
    )