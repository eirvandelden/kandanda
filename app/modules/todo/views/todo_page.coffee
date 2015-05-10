ApplicationPage     = require '../../../views/application_page'
template            = require '../templates/todo_page'
$                   = require 'jquery'
Backbone            = require 'backbone'
window.Backbone     = Backbone
Book                = require '../models/book'

class TodoAppPage extends ApplicationPage
  template: template

  initialize: ->
    @book = new Book
    @book.set 'title', 'Hello'
    @book.set 'author', 'Hello'

  onRender: ->
    @$('.body').append @book.get 'title'

module.exports = TodoAppPage