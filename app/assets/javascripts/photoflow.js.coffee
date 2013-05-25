window.Photoflow =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
  	new Photoflow.Routers.Posts()
  	Backbone.history.start()

$(document).ready ->
  Photoflow.initialize()
