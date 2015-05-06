Marionette = require 'backbone.marionette'
template   = require '../../templates/item_views/todo_itemview'

class TodoItemView extends Marionette.ItemView
  template: template
  tagName: 'li'
  className: 'todo'

  events:
    'click input.complete': 'complete'
    'click button.take_photo': 'takePhoto'

  complete: ->
    @model.set('completed', !@model.get('completed'))



  # ------------------------------------------------------------------------- #
  # Simple Helpers for debugging pleasure
  #
  debugMessage: (message) ->
    console.log message
    alert message
    # TODO: CREATE debug.div
    $('#debug').append('<br>' + message)

  # ------------------------------------------------------------------------- #
  # Cordova Camera Plugin
  #
  takePhoto: ->
    if navigator && navigator.camera && Camera
      try
        navigator.camera.getPicture(
          @cameraSuccess, 
          @cameraError,
          { quality: 50, destinationType: Camera.DestinationType.FILE_URI }
        )
      catch e
        @debugMessage e
    else
      @debugMessage "Camera not detected!"

  # after taking the photo, store it in the model
  cameraSuccess: (url) ->
    @model.store_photo(url)
    
  cameraError: (error) -> 
    @debugMessage error



 

module.exports = TodoItemView
