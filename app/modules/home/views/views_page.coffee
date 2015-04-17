ApplicationPage = require '../../../views/application_page'
PersonItemView  = require './person_itemview'
template        = require '../templates/views_page'
$               = require 'jquery'
Backbone        = require 'backbone'

class ViewsPage extends ApplicationPage
  template: template

  regions:
    'personRegion': '#person-region'

  events:
    'keyup input': 'changeModel'
    'click': (e) ->
      e.preventDefault()
      target = $(e.target)

      @navigate(target.attr('href'), transition: target.data('transition'))

  initialize: ->
    #TODO: instantiate a global variable for the Person Model

  onRender: ->
    #TODO: replace the generic Backbone Model with the person model variable
    @personRegion.show(new PersonItemView(model: new Backbone.Model))

  changeModel: (e) ->
    #TODO: change the model according to the changed input

module.exports = ViewsPage
