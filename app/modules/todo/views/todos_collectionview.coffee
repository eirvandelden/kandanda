Marionette   = require 'backbone.marionette'
TodoItemView = require './todo_itemview'

class TodosCollectionView extends Marionette.CollectionView
  itemView: TodoItemView
  id: '#todoList'
  tagName: 'ul'
  className: 'todos'

module.exports = TodosCollectionView