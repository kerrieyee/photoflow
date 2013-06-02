class Photoflow.Views.Post extends Backbone.View

  template: JST['posts/post']
  id: 'id'
  className: 'post'

  initialize: ->
    $(this.el).attr('id', this.model.get('id'))

  render: ->
    newDate = new Date(this.model.get('created_at'))
    dateString = newDate.toGMTString()
    dateArray = dateString.split(" ")
    date = dateArray.slice(0, 4).join(" ")
    time = dateArray.slice(4).join(" ")
    $(this.el).html(this.template(post: this.model, date: date, time: time))
    this