class Photoflow.Routers.Posts extends Backbone.Router

  routes: 
    '': 'index'
  
  initialize: ->
    @collection = new Photoflow.Collections.Posts()
    @collection.fetch()

  index: ->
    view = new Photoflow.Views.PostsIndex(collection: @collection)
    $('#main').html(view.render().el)
