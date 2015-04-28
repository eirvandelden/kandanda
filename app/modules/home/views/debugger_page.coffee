ApplicationPage = require '../../../views/application_page'
template        = require '../templates/debugger_page'
Backbone        = require 'backbone'

class DebuggerPage extends ApplicationPage
  template: template

  initialize: ->
    new Backbone.Model() #added this line to make sure Browserify adds Backbone
    debugger

module.exports = DebuggerPage
