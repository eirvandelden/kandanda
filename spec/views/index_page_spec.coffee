require('../view_spec_helper')
IndexPage = require('../../app/modules/home/views/index_page')

describe 'IndexPage', ->
  beforeEach ->
    @view = new IndexPage()

  it 'shows three assignments', ->
    DOM.append @view.render().el
    assignments = ['A1', 'A2', 'A3']
    expect(@view.$el.find('.listview').text().trim(0)).to.contain assignment for assignment in assignments
