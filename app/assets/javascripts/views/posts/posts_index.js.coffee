class Photoflow.Views.PostsIndex extends Backbone.View

  template: JST['posts/index']

  events:
    'submit #new_post': 'createPost'
    'click .new': 'toggleForm'

  initialize: ->
    _.bindAll(this, 'createPost', 'toggleForm')
    this.collection.on('reset', this.render, this)
    this.collection.on('add', this.appendPost, this)

  render: =>
    $(this.el).html(this.template())
    this.collection.each(this.appendPost)
    this

  toggleForm: (event) ->
    $('form').toggle()
    if $('span.icon-plus').length == 0
      $('span.icon-minus').replaceWith("<span class='icon icon-plus'></span>")
    else
      $('span.icon-plus').replaceWith("<span class='icon icon-minus'></span>")

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
    this.validate(attributes)
    this.collection.create attributes,
      wait: true
      success: ->
        $('#new_post')[0].reset()
        $("input[class='name red']").attr('class', 'name')
        $("input[class='url red']").attr('class', 'url')

  validate: (attributes)->
    if !attributes.user
      this.$el.find('.user-errors').text("name is required")
      this.$el.find("input[class='name']").addClass('red')
    if !attributes.url
      this.$el.find('.url-errors').text("a photo url is required")
      this.$el.find("input[class='url']").addClass('red')
