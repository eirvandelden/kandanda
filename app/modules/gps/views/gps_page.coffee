ApplicationPage = require '../../../views/application_page'
template        = require '../templates/gps_page'
$               = require 'jquery'

class GpsPage extends ApplicationPage
  template: template

  events:
    'click #gps': 'getGPS'

  getGPS: (e) ->
    e.preventDefault()
    if navigator && navigator.geolocation
      console.log 'calling navigator.geolocation.getCurrentPosition'
      navigator.geolocation.getCurrentPosition( @geoSuccess, @geoError)
    else
      @geoError('GPS not supported')

  geoSuccess: (position) ->
    console.log 'you are at', position
    $('#longitude').text(position.coords.longitude)
    $('#latitude').text(position.coords.latitude)

  geoError: (error) ->
    console.log "Something went wrong: #{error}}"
    alert "Something went wrong: #{error}}"

module.exports = GpsPage
