class Photoflow.Routers.PostsRouter extends Backbone.Router
  initialize: (options) ->

  routes:
  	'': 'index'

  initialize: ->
  	@collection = new Photoflow.Collections.PostsCollection()
  	@colection.fetch()

  index: ->
  	view = new Photoflow.Views.PostsIndex(collection: @collection)
  	$('#container').html(view.render().el)
