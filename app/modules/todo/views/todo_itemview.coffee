Marionette = require 'backbone.marionette'
TodoModel  = require '../models/todo_model'
template   = require '../templates/todo_itemview'

class TodoItemView extends Marionette.ItemView
  template: template
  model: TodoModel
  tagName: 'li'
  className: -> if @model.get 'completed' then 'todo completed' else 'todo'

  events:
    'click .finish': 'toggleCompletion'

  toggleCompletion: ->
    @model.toggle()
    @$el.toggleClass 'completed'

module.exports = TodoItemView