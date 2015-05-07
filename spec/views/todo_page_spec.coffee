require '../view_spec_helper'
TodoPage  = require '../../app/modules/assignment3/views/todo_page'
TodoModel = require '../../app/modules/assignment3/models/todo_model'

describe 'TodoPage', ->
  beforeEach ->
    @view = new TodoPage()
    DOM.append @view.render().el

  it 'shows an input field and a button', ->
    expect(@view.$el.find('input').length).to.not.eq 0
    expect(@view.$el.find('a.btn#submit').length).to.not.eq 0

  it 'allows new todos to be added', ->
    @view.$el.find('#todo').val('example to do')
    @view.$el.find('#submit').trigger 'click'

    expect(@view.$el.find('.todo').text().trim(0)).to.contain('example to do')
