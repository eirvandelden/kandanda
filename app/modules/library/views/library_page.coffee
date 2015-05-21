ApplicationPage = require '../../../views/application_page'
template        = require '../templates/library_page'
Backbone        = require 'backbone'
libraryService  = require '../services/library_service'

class LibraryPage extends ApplicationPage
  template: template

  initialize: ->
    @collection = new Backbone.Collection()

  events:
    'click button#fetch': 'fetchModels'

  fetchModels: ->
    #try this is a thin arrow
    console.log 'fetching models'
    
    
    libraryService.fetchLibrary()
      .then (response) ->
        console.log 'afbeelding', response
        console.log 'afbeelding', response['sAfbeelding']
        $('.photo').html(response['sSerienummer'])
      .fail (error) ->
        console.log 'failed', error
        alert 'failed to fetch data from the server'

module.exports = LibraryPage