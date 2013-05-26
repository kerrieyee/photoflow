class Photoflow.Views.Post extends Backbone.View

  template: JST['posts/post']
  id: 'id'
  className: 'post'

  initialize: ->
    $(@el).attr('id', @model.get('id'))

  render: ->
    newDate = new Date(@model.get('created_at'))
    dateString = newDate.toGMTString()
    dateArray = dateString.split(" ")
    date = dateArray.slice(0, 4).join(" ")
    time = dateArray.slice(4).join(" ")
    $(@el).html(@template(post: @model, date: date, time: time))
    this