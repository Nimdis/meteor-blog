Meteor.startup () ->
  @PostsForm = new AutoForm(Posts)

  @PostsForm.hooks
    after:
      insert: (error, result) ->
        if error
          console.log "error: #{error}"
        else
          console.log 'omfg done'
