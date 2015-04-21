Backbone = require 'backbone'

class TodoModel extends Backbone.Model
  defaults:
    'completed': false

module.exports = TodoModel
