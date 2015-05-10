Backbone = require 'backbone'
_        = require 'underscore'

class TodoModel extends Backbone.Model
  defaults:
    'completed': false

  toggle: ->
    @set 'completed', !@get 'completed'

module.exports = TodoModel