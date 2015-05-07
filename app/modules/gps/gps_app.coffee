app        = require '../../app'
Marionette = require 'backbone.marionette'

GpsApp = app.module 'gps'
GpsApp.startWithParent = false

class GpsApp.Router extends Marionette.AppRouter
  appRoutes:
    'gps' : 'gps'

API =
  gps: ->
    GpsPage = require './views/gps_page'
    app.mainRegion.show new GpsPage()

GpsApp.addInitializer ->
  new GpsApp.Router
    controller: API

module.exports = GpsApp
