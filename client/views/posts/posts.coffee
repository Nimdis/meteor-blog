Template.posts.posts = () ->
  Posts.find()

Template.posts_form.selectedPost = () ->
  Posts.findOne(Session.get("selectedPost"))

Template.posts.events
  'click .post' : (e) ->
    Session.set "selectedPost", this._id
    $('.posts .active').removeClass('active')
    $(e.target).closest('tr').addClass('active')
