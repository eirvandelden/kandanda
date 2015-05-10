Marionette = require 'backbone.marionette'
template   = require '../templates/todo_itemview'
TodoModel  = require '../models/todo_model'

class TodoItemView extends Marionette.ItemView
  template: template
  model: TodoModel
  tagName: 'li'
  className: -> if @model.get 'completed' then 'todo completed' else 'todo'

  events:
    'click .finish': 'toggleCompletion'

  modelEvents:
    'change': 'render'

  toggleCompletion: ->
    @model.toggle()
    @$el.toggleClass 'completed'

module.exports = TodoItemView