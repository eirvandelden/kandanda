app        = require '../../app'
Marionette = require 'backbone.marionette'

TodoApp = app.module 'todo'
TodoApp.startWithParent = false

class TodoApp.Router extends Marionette.AppRouter
  appRoutes:
    '': 'todo'

API =
  todo: ->
    TodoAppPage = require './views/todo_page'
    app.mainRegion.show new TodoAppPage()

TodoApp.addInitializer ->
  new TodoApp.Router
    controller: API

module.exports = TodoApp
