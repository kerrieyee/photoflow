class Photoflow.Views.Post extends Backbone.View

  template: JST['posts/post']
  tagName: 'tr'
  id: 'id'

  initialize: ->
  	$(@el).attr('id', @model.get('id'))

  render: ->
    $(@el).html(@template(post: @model))
    this