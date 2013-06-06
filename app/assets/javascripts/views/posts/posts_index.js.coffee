class Photoflow.Views.PostsIndex extends Backbone.View

  template: JST['posts/index']

  events:
    'submit #new_post': 'createPost'

  initialize: ->
    _.bindAll 'createPost'
    this.collection.on('reset', this.render, this)
    this.collection.on('add', this.appendPost, this)

  render: =>
    $(this.el).html(this.template())
    this.collection.each(this.appendPost)
    this

  appendPost: (post)=>
    view = new Photoflow.Views.Post(model: post)
    this.$('#posts').prepend(view.render().el)

  createPost: (event) ->
    event.preventDefault()
    attributes =
      title: $('#new_post_title').val()
      user: $('#new_post_user').val()
      url: $('#new_post_url').val()
      caption: $('#new_post_caption').val()
    this.collection.create attributes,
      wait: true
      success: ->
        $('#new_post')[0].reset()
      error: ->
        debugger
