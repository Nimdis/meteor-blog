@Posts = new Meteor.Collection2 'posts',
    schema:
      title:
        type: String
        label: "Title"

      body:
        type: String
        label: "Body"

@Posts.allow
  insert: () ->
    true
  update: () ->
    true
  remove: () ->
    true
