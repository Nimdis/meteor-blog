@Posts = new Meteor.Collection2 'posts',
    schema:
      title:
        type: String
        label: "Title"

      body:
        type: String
        label: "Body"

      user_id:
        type: String
        label: "UserID"

      user_name:
        type: String
        label: "UserName"

@Posts.allow
  insert: () ->
    true
  update: () ->
    true
  remove: () ->
    true
