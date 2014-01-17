Template.posts.posts = () ->
  Posts.find()

Template.posts_form.selectedPost = () ->
  Posts.findOne(Session.get("selectedPost"))

Template.posts.events
  'click .post' : (e) ->
      e.preventDefault()
      Session.set "selectedPost", this._id
      $('.active').removeClass('active')
      $(e.target).closest('tr').addClass('active')
