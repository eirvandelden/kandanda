require('../view_spec_helper')
IndexPage = require('../../app/modules/home/views/index_page')

describe 'IndexPage', ->
  beforeEach ->
    @view = new IndexPage()

  it 'shows a "New match" button', ->
    DOM.append @view.render().el
    expect(@view.$el.find('a.new-match').text().trim(0)).to.eq('New match')
