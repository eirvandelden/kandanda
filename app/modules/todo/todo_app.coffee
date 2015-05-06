app        = require '../../app'
Marionette = require 'backbone.marionette'

TodoApp = app.module 'todo'
TodoApp.startWithParent = false

class TodoApp.Router extends Marionette.AppRouter
  appRoutes:
    'todos' : 'todo'

API =
  todo: ->
    TodoPage = require './views/pages/todo_page'
    app.mainRegion.show new TodoPage()

TodoApp.addInitializer ->
  new TodoApp.Router
    controller: API

module.exports = TodoApp
