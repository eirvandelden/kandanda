ApplicationPage = require '../../../views/application_page'
template        = require '../templates/camera_page'
$               = require 'jquery'

class CameraPage extends ApplicationPage
  template: template

  events:
    'click #camera': 'camera'

  camera: ->
    if navigator && navigator.camera
      console.log 'Starting Native Camera functionality'
      navigator.camera.getPicture(
        @cameraSuccess,
        @cameraError,
        { quality: 50, destinationType: Camera.DestinationType.DATA_URL }
      )
    else
      @cameraError('Your OS does not support the camera')

  cameraSuccess: (imageData) ->
    console.log 'successfully got image data', imageData
    $('#photo').attr('src', 'data:image/jpeg;base64,' + imageData)

  cameraError: (msg) ->
    console.log 'An error occured:', msg
    alert 'An error occured: \n' + msg

module.exports = CameraPage
