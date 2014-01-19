Template.posts.posts = () ->
  Posts.find()

Template.posts_form.selectedPost = () ->
  this

Template.posts_form.isSelected = () ->
  this._doc.title

Template.posts_form.isUser = () ->
  Meteor.userId() != null

Template.posts.events
  'click .post' : (e) ->
    Session.set "selectedPost", this._id
    $('.posts .active').removeClass('active')
    $(e.target).closest('tr').addClass('active')
    Router.go("/posts/#{this._id}/edit")
