require '../view_spec_helper'

TodoItemView = require '../../app/modules/todo/views/todo_itemview'
TodoModel    = require '../../app/modules/todo/models/todo_model'
Backbone     = require 'backbone'

describe 'TodoItemView', ->
  context '.complete()', ->
    beforeEach ->
      @todo = new TodoModel {title: 'test' }
      @view = new TodoItemView { model: @todo }

    it 'calls toggle on the model', ->
      stub = sinon.stub @todo, 'toggle'
      DOM.append @view.render().el

      @view.$('.finish').trigger 'click'
      expect(stub).to.have.been.calledOnce

    it 'changes class when completion state changes', ->
      DOM.append @view.render().el
      expect(@view.$el.hasClass('completed')).to.be.false

      @view.toggleCompletion()
      expect(@view.$el.hasClass('completed')).to.be.true