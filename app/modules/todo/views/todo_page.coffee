ApplicationPage     = require '../../../views/application_page'
TodosCollectionView = require './todos_collectionview'
TodosCollection     = require '../collections/todos_collection'
TodoModel           = require '../models/todo_model'
template            = require '../templates/todo_page'
$                   = require 'jquery'
_                   = require 'underscore'

class CollectionsPage extends ApplicationPage
  template: template

  events:
    'click button#add': 'addModel'

  initialize: ->
    @collection = new TodosCollection
    @todosCollectionView = new TodosCollectionView collection: @collection

  onRender: ->
    @$('#todo-collections-view').append @todosCollectionView.render().el

  addModel: (e) ->
    e.preventDefault()
    val = @$('#todo').val()
    unless _.isEmpty val
      @collection.add new TodoModel({title: val})
      @$('#todo').val '' #empty input after adding

module.exports = CollectionsPage