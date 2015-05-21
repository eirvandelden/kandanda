app        = require '../../app'
Marionette = require 'backbone.marionette'

LibraryApp = app.module 'library'
LibraryApp.startWithParent = false

class LibraryApp.Router extends Marionette.AppRouter
  appRoutes:
    'library': 'library'

API =
  library: ->
    LibraryPage = require '../library/views/library_page'
    app.mainRegion.show new LibraryPage()

LibraryApp.addInitializer ->
  new LibraryApp.Router
    controller: API

module.exports = LibraryApp
