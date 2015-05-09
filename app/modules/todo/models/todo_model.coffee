Backbone = require 'backbone'
_        = require 'underscore'

class TodoModel extends Backbone.Model
  defaults:
    'completed': false

  hasPhoto: ->
    photoPath = @get 'photoPath'
    !_.isEmpty(photoPath) && _.isString(photoPath)

  photoSrc: ->
    if @hasPhoto then @get 'photoPath' else null

  storePhoto: (url) ->
    @set 'photoPath', url

  toggle: ->
    @set 'completed', !@get 'completed'

module.exports = TodoModel