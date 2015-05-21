app        = require '../../app'
Marionette = require 'backbone.marionette'

LibraryApp = app.module 'library'
LibraryApp.startWithParent = false

class LibraryApp.Router extends Marionette.AppRouter
  appRoutes:


API =


LibraryApp.addInitializer ->
  new LibraryApp.Router
    controller: API

module.exports = LibraryApp
