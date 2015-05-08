Backbone = require 'backbone'
_        = require 'underscore'

class TodoModel extends Backbone.Model
  defaults:
    'completed': false

  hasPhoto: ->
    photo_path = @get('photo_path')
    !_.isEmpty photo_path && _.isString photo_path

  photoSrc: ->
    if @hasPhoto then @get 'photo_path' else null

  store_photo: (url) ->
    @set 'photo_path',url

  toggle: ->
    @set 'completed', !@get 'completed'

module.exports = TodoModel