Meteor.startup () ->
  @PostsForm = new AutoForm(Posts)

  @PostsForm.hooks
    after:
      insert: (error, result) ->
        if error
          notice_message.show('danger', "Oops! Error: #{error}")
        else
          notice_message.show('success', 'Post was created.')
    before:
      insert: (doc) ->
        doc.user_id = Meteor.userId()
        doc.user_name = Meteor.user().username
        doc
