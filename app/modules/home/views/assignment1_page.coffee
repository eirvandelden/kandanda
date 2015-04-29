ApplicationPage = require '../../../views/application_page'
template        = require '../templates/assignment1_page'
Backbone        = require 'backbone'

class Assignment1Page extends ApplicationPage
  template: template

  initialize: ->
    new Backbone.Model() #added this line to make sure Browserify adds Backbone
    debugger

module.exports = Assignment1Page
