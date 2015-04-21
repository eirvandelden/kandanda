Marionette = require 'backbone.marionette'
template   = require '../templates/todo_itemview'

class TodoItemView extends Marionette.ItemView
  template: template
  tagName: 'li'
  className: 'todo'

module.exports = TodoItemView
