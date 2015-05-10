Marionette = require 'backbone.marionette'
template   = require '../templates/todo_itemview'

class TodoItemView extends Marionette.ItemView
  template: template
  tagName: 'li'
  className: -> if @model.get 'completed' then 'todo completed' else 'todo'

  events:
    'click .finish': 'toggleCompletion'
    'click button.take_photo': 'takePhoto'

  toggleCompletion: ->
    @model.toggle()
    @$el.toggleClass 'completed'

  takePhoto: ->
    if navigator && navigator.camera && Camera
      try
        navigator.camera.getPicture(
          @cameraSuccess,
          @cameraError,
          { quality: 50, destinationType: Camera.DestinationType.FILE_URI }
        )
      catch e
        alert e
    else
      alert 'No camera detected.'

  # after taking the photo, store it in the model
  cameraSuccess: (url) ->
    @model.storePhoto url

  cameraError: (error) ->
    alert error

module.exports = TodoItemView