ApplicationPage     = require '../../../views/application_page'
TodosCollectionView = require './todos_collectionview'
TodoModel           = require '../models/todo_model'
TodosCollection     = require '../collections/todos_collection'
template            = require '../templates/todo_page'
$                   = require 'jquery'
_                   = require 'underscore'

class CollectionsPage extends ApplicationPage
  template: template

  events:
    'click button#add': 'addModel'

  initialize: ->
    @collection = new TodosCollection

  addModel: (e) ->
    e.preventDefault()
    val = @$('#todo').val()
    unless _.isEmpty val
      @collection.add new TodoModel({title: val})
      @$('#todo').val '' #empty input after adding

  onRender: ->
    todosCollectionView = new TodosCollectionView collection: @collection
    @$('#todo-collections-view').append todosCollectionView.render().el

module.exports = CollectionsPage