ApplicationPage = require '../../../views/application_page'
template        = require '../templates/debugger_page'
Backbone        = require 'backbone'

class DebuggerPage extends ApplicationPage
  template: template

  events:
    'click': (e) ->
      e.preventDefault()
      target = $(e.target)

      @navigate(target.attr('href'), transition: target.data('transition'))

  initialize: ->
    new Backbone.Model()
    debugger

module.exports = DebuggerPage
