Backbone = require 'backbone'
Book     = require '../models/book'

class Library extends Backbone.Collection
  model: Book
  url: 'http://www.mocky.io/v2/5540ddd3be2f27a51e007336'

module.exports = Library