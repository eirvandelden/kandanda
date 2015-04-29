app        = require('../../app')
Marionette = require('backbone.marionette')

HomeApp = app.module('home')
HomeApp.startWithParent = false

class HomeApp.Router extends Marionette.AppRouter
  appRoutes:
    ''       : 'home'
    'assignment1-debugger' : 'debuggerPage'

API =
  home: ->
    IndexPage = require './views/index_page'
    app.mainRegion.show new IndexPage()
  debuggerPage: ->
    Assignment1Page = require './views/assignment1_page'
    app.mainRegion.show new Assignment1Page()

HomeApp.addInitializer ->
  new HomeApp.Router
    controller: API

module.exports = HomeApp
