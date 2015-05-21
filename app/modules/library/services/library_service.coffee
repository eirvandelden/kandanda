$ = require 'jquery'

class LibraryService
  fetchLibrary: ->
    deferred = $.Deferred()
    
    console.log 'ajax call'
    $.ajax(
      url: ''
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