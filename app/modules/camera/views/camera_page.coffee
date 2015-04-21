ApplicationPage = require '../../../views/application_page'
template        = require '../templates/camera_page'
$               = require 'jquery'

class CameraPage extends ApplicationPage
  template: template

  events:
    'click #camera': 'camera'

  initialize: ->
    console.log 'started!'

  camera: ->
    if navigator && navigator.camera
      navigator.camera.getPicture( @cameraSuccess, @cameraError, {} )

  cameraSuccess: (args) ->
    console.log 'Success!', args
    alert 'success!', args

  cameraError: (msg) ->
    console.log 'Error!', msg
    alert 'error!', msg

module.exports = CameraPage
