Marionette = require 'backbone.marionette'
template   = require '../templates/todo_itemview'

class TodoItemView extends Marionette.ItemView
  template: template
  tagName: 'li'
  className: 'todo'

  events:
    'click input.complete': 'complete'

  complete: ->
    @model.set('completed', !@model.get('completed'))

module.exports = TodoItemView
