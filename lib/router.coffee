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

# Routes

Router.map () ->
  this.route 'mainPage',
    path: '/',
    controller: MainPageController

  this.route 'posts',
    path: '/posts/',
    controller: PostsController

  this.route 'posts',
    path: '/posts/new/',
    controller: NewPostController
