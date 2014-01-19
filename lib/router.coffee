# Config

Router.configure
  layoutTemplate: 'layout'

# Controllers

MainPageController = RouteController.extend
    template: 'mainPage'

PostsController = RouteController.extend
  template: 'posts'
  path: '/posts/'

NewPostController = PostsController.extend
  template: 'posts_form'
  path: '/posts/new/'

EditPostController = PostsController.extend
  template: 'posts_form'
  path: '/posts/:_id/edit/'

# Routes

Router.map () ->
  this.route 'mainPage',
    path: '/',
    controller: MainPageController

  this.route 'posts',
    path: '/posts/',
    controller: PostsController

  this.route 'postNew',
    path: '/posts/new/',
    controller: NewPostController

  this.route 'postEdit',
    path: '/posts/:_id/edit/',
    controller: EditPostController
    data: () ->
      Posts.findOne this.params._id
