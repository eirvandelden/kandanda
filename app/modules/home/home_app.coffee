app        = require('../../app')
Marionette = require('backbone.marionette')

HomeApp = app.module('home')
HomeApp.startWithParent = false

class HomeApp.Router extends Marionette.AppRouter
  appRoutes:
    ''       : 'home'
    'assignment1-debugger' : 'debuggerPage'
    'assignment2-views': 'viewsPage'

API =
  home: ->
    IndexPage = require './views/index_page'
    app.mainRegion.show new IndexPage()
  debuggerPage: ->
    Assignment1Page = require './views/assignment1_page'
    app.mainRegion.show new Assignment1Page()
  viewsPage: ->
    ViewsPage = require './views/views_page'
    app.mainRegion.show new ViewsPage()

HomeApp.addInitializer ->
  new HomeApp.Router
    controller: API

module.exports = HomeApp
