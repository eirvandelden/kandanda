Backbone = require 'backbone'

class TodoModel extends Backbone.Model

  # These are our default values
  defaults:
    'title': ''
    'completed': false
    'photo_path': null
    'geo_location': [null, null]

  # --- Photo stuff ---------------------------------------------------------- #
  has_photo: ->
    photo_path = @get('photo_path')
    if typeof(photo_path) == 'String' && photo_path != ''
      true
    else
      false
      

  photo_src: ->
    if @has_photo
      @get('photo_path')
    else
      null

  store_photo: (url) -> 
    @set('photo_path',url)

  # --- Photo stuff ---------------------------------------------------------- #
 

  # --- Geo location --------------------------------------------------------- #
  has_geo_location: ->

    geo_location = @get('geo_location')

    # Basic check
    if geo_location && typeof(geo_location) == 'Array' and geo_location.length == 2
      true
    else
      false

  store_geolocation: (lat, long) ->
    @set('geo_location',[lat,long])
  # --- Geo location --------------------------------------------------------- #




module.exports = TodoModel
