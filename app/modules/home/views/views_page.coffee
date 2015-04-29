ApplicationPage = require '../../../views/application_page'
PersonItemView  = require './person_itemview'
template        = require '../templates/views_page'
$               = require 'jquery'
Backbone        = require 'backbone'
#TODO: require the person model

class ViewsPage extends ApplicationPage
  template: template

  initialize: ->
    #TODO: instantiate a global variable for the Person Model

  onRender: ->
    #TODO: replace the generic Backbone Model with the global person object
    #TODO: edit the PersonItemView to display this attribute
    personView = new PersonItemView(model: new Backbone.Model())
    @$el.append(personView.render().$el)

  #TODO: Add an eventHandler that calls a method when a user has filled in some
  #       input. The method should set some attribute of the global person object.

module.exports = ViewsPage
