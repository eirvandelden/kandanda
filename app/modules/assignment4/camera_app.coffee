app        = require '../../app'
Marionette = require 'backbone.marionette'

CameraApp = app.module 'camera'
CameraApp.startWithParent = false

class CameraApp.Router extends Marionette.AppRouter
  appRoutes:
    'assignment4': 'camera'

API =
  camera: ->
    CameraPage = require './views/camera_page'
    app.mainRegion.show new CameraPage()

CameraApp.addInitializer ->
  new CameraApp.Router
    controller: API

module.exports = CameraApp
