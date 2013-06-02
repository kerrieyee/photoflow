class Photoflow.Routers.Posts extends Backbone.Router

  routes: 
    '': 'index'
  
  initialize: ->
    this.collection = new Photoflow.Collections.Posts()
    this.collection.fetch()

  index: ->
    view = new Photoflow.Views.PostsIndex(collection: this.collection)
    $('#main').html(view.render().el)
