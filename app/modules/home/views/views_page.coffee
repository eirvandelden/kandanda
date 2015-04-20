ApplicationPage = require '../../../views/application_page'
PersonItemView  = require './person_itemview'
Person          = require '../models/person_model'
template        = require '../templates/views_page'
$               = require 'jquery'
Backbone        = require 'backbone'

class ViewsPage extends ApplicationPage
  template: template

  regions:
    'personRegion': '#person-region'

  events:
    'keyup input': 'changeModel'

  initialize: ->
    @person = new Person()

  onRender: ->
    @personRegion.show(new PersonItemView(model: @person))

  changeModel: (e) ->
    @person.set(e.currentTarget.id, $(e.currentTarget).val())

module.exports = ViewsPage
