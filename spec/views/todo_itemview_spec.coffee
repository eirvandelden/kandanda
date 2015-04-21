require '../view_spec_helper'
TodoItemView = require '../../app/modules/todo/views/todo_itemview'
Backbone     = require 'backbone'

describe 'TodoItemView', ->
  context '.complete()', ->
    beforeEach ->
      @view = new TodoItemView(model: new Backbone.Model({title: 'test', completed: false}))
      DOM.append @view.render().el

    it 'sets the model to completed', ->
      @view.complete()
      expect(@view.model.get('completed')).to.be.true
