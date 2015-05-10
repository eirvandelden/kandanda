require '../view_spec_helper'
TodoPage  = require '../../app/modules/todo/views/todo_page'
TodoModel = require '../../app/modules/todo/models/todo_model'

describe 'TodoPage', ->
  beforeEach ->
    @view = new TodoPage()

  it 'shows an input field and a button', ->
    DOM.append @view.render().el
    expect(@view.$el.find('input#todo').length).to.not.eq 0
    expect(@view.$el.find('button#add').length).to.not.eq 0

  it 'allows new todos to be added', ->
    spy = sinon.spy @view.collection, 'add'
    DOM.append @view.render().el
    @view.$el.find('#todo').val 'example to do'
    @view.$el.find('#add').trigger 'click'

    expect(@view.$el.find('.todo').text().trim(0)).to.contain 'example to do'
    expect(spy).to.have.been.calledOnce