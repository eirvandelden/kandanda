Backbone  = require 'backbone'
TodoModel = require '../models/todo_model'

class TodosCollection extends Backbone.Collection
  model: TodoModel

module.exports = TodosCollection