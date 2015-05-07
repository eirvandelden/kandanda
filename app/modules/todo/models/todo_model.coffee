Backbone = require 'backbone'

class TodoModel extends Backbone.Model

  # These are our default values (attributes) of our model
  defaults:
    'title': ''
    'completed': false
    'photo_path': null

  # -------------------------------------------------------------------------- #
  # Photo stuff
  #
  # Here we have some basic methods for checking if we have a photo and to set
  # a photo
  #
  # Hooking the Cameara plugin to the model happens in the ItemView

  # Do we have a photo?
  has_photo: ->
    photo_path = @get('photo_path')
    if typeof(photo_path) == 'String' && photo_path != ''
      true
    else
      false
      
  # Photo source url
  photo_src: ->
    if @has_photo
      @get('photo_path')
    else
      null

  # Save photo url to model attributes
  store_photo: (url) -> 
    @set('photo_path',url)
  # -------------------------------------------------------------------------- #
module.exports = TodoModel
