class Photoflow.Views.PostsIndex extends Backbone.View

  template: JST['posts/index']

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendPost, this)

  render: =>
    $(@el).html(@template())
    @collection.each(@appendPost)
    this

  appendPost: (post)=>
    view = new Photoflow.Views.Post(model: post)
    @$('#posts').html(view.render().el)

