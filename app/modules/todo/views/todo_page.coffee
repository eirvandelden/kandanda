ApplicationPage = require('../../../views/application_page')
template        = require('../templates/todo_page')
$               = require('jquery')

class CollectionsPage extends ApplicationPage
  template: template

  regions:
    '#entry-form': 'entryForm'
    '#collections-view': 'collectionView'

  onRender: ->
    debugger
    #TODO:
    # - Make a TodoList collection;
    #     this collection will keep track of all todos, it represents the list
    # - Make a Todo Model;
    #     this model represents a single todo-able item
    # - Make an input field where a user can type in the thing-to-do;
    #     when pressing enter, the value of this input field should be used to
    #     create a new Todo model and be added to the Collection
    # - Make a TodoList CollectionView;
    #     this view will handle the actual drawing of collection
    #     note: the collectionView does _not_ have a template
    #     hint: When instantiating the CollectionView, pass the collection as a parameter
    # - Make a TodoItemView;
    #     a collectionView needs an itemView: a view for each item in the collection
    #     in our case, that is the name of the todo-able thing
    #
    # Bonus point:
    # - Make a checkbox that sets a todo to 'completed'
    # - Display how many todos have been completed;
    #     hint: look at the documentation for collection for available helper functions
    # - Make a delete button to delete a todo from the list

module.exports = CollectionsPage
