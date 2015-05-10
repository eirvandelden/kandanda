ApplicationPage     = require '../../../views/application_page'
template            = require '../templates/todo_page'
$                   = require 'jquery'
Backbone            = require 'backbone'
window.Backbone     = Backbone
Book                = require '../models/book'
Library             = require '../collections/library'

class TodoAppPage extends ApplicationPage
  template: template

  initialize: ->
    @book = new Book
    @book.set 'title', 'Hello'
    @book.set 'author', 'Hello'
    @library = new Library
    @library.add @book

  onRender: ->
    @library.fetch().then =>
      @$('.body').append JSON.stringify @library.toJSON()

module.exports = TodoAppPage