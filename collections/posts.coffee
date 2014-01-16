@Posts = new Meteor.Collection2 'posts',
    schema:
      title:
        type: String
        label: "Title"

      author:
        type: String
        label: "Author"

      body:
        type: String
        label: "Body"

@Posts.allow
  insert: () ->
    true
