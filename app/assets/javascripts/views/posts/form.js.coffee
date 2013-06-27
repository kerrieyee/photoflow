class Photoflow.Views.Form extends Backbone.View

  template: JST['posts/form']
  events:
    'click .new': 'toggleForm'

  initialize: ->
    _.bindAll(this, 'toggleForm')

  render: ->
  	$(this.el).html(this.template())

  toggleForm: (event) ->
    $('form').toggle()
    if $('span.icon-plus').length == 0
      $('span.icon-minus').replaceWith("<span class='icon icon-plus'></span>")
    else
      $('span.icon-plus').replaceWith("<span class='icon icon-minus'></span>")
