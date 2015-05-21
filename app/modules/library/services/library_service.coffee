$ = require 'jquery'

class LibraryService
  fetchLibrary: ->
    deferred = $.Deferred()
    
    console.log 'ajax call'
    $.ajax(
      url: 'http://support.promesse.net:6432/aish&d/alwaysinservicewebservice.wso/GetObjectPicture/JSON/debug?sEmailAdress=ave@onsolutions.nl&sPassword=magnum&sArtnum=100000&sSerienr=YS-37-SL'
      dataType: 'json'
    )
    .done (response) ->
      console.log 'done', response
      deferred.resolve response
    .fail (error) ->
      console.log 'error', error
      deferred.reject error

    promise = deferred.promise()

module.exports = new LibraryService()