Backbone  = require 'backbone'
TodoModel = require '../models/todo_model'

class TodoCollection extends Backbone.Collection
  model: TodoModel

module.exports = TodoCollection
