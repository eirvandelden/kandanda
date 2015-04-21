ApplicationPage     = require '../../../views/application_page'
TodosCollection     = require '../collections/todos_collection'
TodoModel           = require '../models/todo_model'
TodosCollectionView = require './todos_collectionview'
template            = require '../templates/todo_page'
$                   = require 'jquery'
_                   = require 'underscore'

class CollectionsPage extends ApplicationPage
  template: template

  regions:
    'collectionView': '#collections-view'

  events:
    'click #submit': 'addModel'

  initialize: ->
    @collection = new TodosCollection

  addModel: ->
    val =  @$('#todo').val()
    unless _.isEmpty val
      @collection.add new TodoModel({title: val})
      @$('#todo').val('') #empty input after adding

  onRender: ->
    todosCollectionView = new TodosCollectionView(collection: @collection)
    @collectionView.show todosCollectionView

module.exports = CollectionsPage
