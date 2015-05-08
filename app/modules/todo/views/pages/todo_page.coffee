ApplicationPage     = require '../../../../views/application_page'
TodoModel           = require '../../models/todo_model'
TodosCollection     = require '../../collections/todos_collection'
TodosCollectionView = require '../collection_views/todos_collectionview'
template            = require '../../templates/pages/todo_page'
$                   = require 'jquery'
_                   = require 'underscore'

class CollectionsPage extends ApplicationPage
  template: template

  regions:
    'collectionView': '#todo-collections-view'

  events:
    'click button[type="submit"]': 'addModel'

  initialize: ->
    @collection = new TodosCollection
    
    @collection.add([
      { title: 'Come to Maji course', completed: true },
      { title: 'Get lunch!', photo_path: '/assets/images/lunch.jpg' },
      { title: 'Finish Maji course' }
    ])

  addModel: (e) ->
    e.preventDefault()
    val = @$('#todo').val()
    unless _.isEmpty val
      @collection.add new TodoModel({title: val})
      @$('#todo').val('') #empty input after adding

  onRender: ->
    todosCollectionView = new TodosCollectionView(collection: @collection)
    @collectionView.show todosCollectionView

module.exports = CollectionsPage