# success, info, warning, danger
class NoticeMessage
  constructor: (@type = undefined, @body = undefined) ->

  show: (type, body) ->
    @type = type
    @body = body
    if this.exist()
      block = $('.js-notifications')
      $('.js-notifications .alert').remove()
      block.html("<div class='alert alert-#{@type}'>#{@body}</div>")
      $('.js-notifications .alert').fadeIn('slow')
      this.hide()
    true

  hide: () ->
    Meteor.setTimeout () ->
      $('.alert').fadeOut('slow')
    , 5000

  exist: () ->
    !(_.isUndefined @type && _.isUndefined @body)


@notice_message = new NoticeMessage()

Template.notice_messages.type = () ->
  notice_message.type


Template.notice_messages.body = () ->
  notice_message.body

Template.notice_messages.exist = () ->
  notice_message.exist()

Template.notice_messages.rendered = () ->
  notice_message.hide()
