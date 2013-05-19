class Photoflow.Models.Post extends Backbone.Model
  paramRoot: 'post'

  defaults:

class Photoflow.Collections.PostsCollection extends Backbone.Collection
  model: Photoflow.Models.Post
  url: '/api/posts'
