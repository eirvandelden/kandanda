ApplicationPage     = require '../../../views/application_page'
template            = require '../templates/todo_page'
$                   = require 'jquery'
Backbone            = require 'backbone'
window.Backbone     = Backbone

class TodoAppPage extends ApplicationPage
  template: template

  events:
    'click': (e) ->
      e.preventDefault()
      target = $(e.target)

      @navigate(target.attr('href'), transition: target.data('transition'))

module.exports = TodoAppPage