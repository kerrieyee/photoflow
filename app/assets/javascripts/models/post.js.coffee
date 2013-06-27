class Photoflow.Models.Post extends Backbone.Model

  validate: (attrs)->
    if !attrs.user
      $('.user-errors').text("name is required")
      $("input[class='name']").addClass('red')
    if !attrs.url || attrs.url.match(/.jpg$|.png$|.jpeg$|.gif$/) == null
      $('.url-errors').text("a photo url (.jpg, .png, .jpeg, .gif) is required")
      $("input[class='url']").addClass('red')