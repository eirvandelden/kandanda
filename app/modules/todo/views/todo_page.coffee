ApplicationPage     = require '../../../views/application_page'
TodoModel           = require '../models/todo_model'
TodoItemView        = require './todo_itemview'
template            = require '../templates/todo_page'
$                   = require 'jquery'
_                   = require 'underscore'

class CollectionsPage extends ApplicationPage
  template: template

  events:
    'click button#add': 'changeModel'

  initialize: ->
    @todo = new TodoModel
    @todoItemView = new TodoItemView model: @todo

  onRender: ->
    @$('#todo-collections-view').append @todoItemView.render().el

  changeModel: (e) ->
    e.preventDefault()
    val = @$('#todo').val()
    unless _.isEmpty val
      @todo.set 'title', val
      @$('#todo').val '' #empty input after changing

module.exports = CollectionsPage