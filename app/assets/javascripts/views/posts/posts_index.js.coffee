class Photoflow.Views.PostsIndex extends Backbone.View

  template: JST['posts/index']

  initialize: ->
    this.collection.on('reset', this.render, this)
    this.collection.on('add', this.appendPost, this)

  render: =>
    $(this.el).html(this.template())
    this.collection.each(this.appendPost)
    this

  appendPost: (post)=>
    view = new Photoflow.Views.Post(model: post)
    this.$('#posts').prepend(view.render().el)