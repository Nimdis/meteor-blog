Meteor.startup () ->
  @PostsForm = new AutoForm(Posts)

  @PostsForm.hooks
    after:
      insert: (error, result) ->
        if error
          notice_message.show('danger', "Oops! Error: #{error}")
        else
          notice_message.show('success', 'Post was created.')

