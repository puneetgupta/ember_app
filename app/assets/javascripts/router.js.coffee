RailsEmber.Router.map ->
  @resource "lists",path: "/", ->
    @route "show", path: "/:cat_id"

RailsEmber.ListsRoute = Ember.Route.extend
  model: -> RailsEmber.List.find()

RailsEmber.ListsIndexRoute = Ember.Route.extend
  model: -> RailsEmber.List.find()
  renderTemplate: -> @render('category/lists')

RailsEmber.ListsShowRoute = Ember.Route.extend(
  model:(e) -> RailsEmber.List.find(s)
  renderTemplate: (controller) ->
    @render "category/show",
      controller: controller
  pin: -> RailsEmber.Pin.find()
)