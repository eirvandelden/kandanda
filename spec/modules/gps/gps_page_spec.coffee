require '../../view_spec_helper'

GpsPage = require '../../../app/modules/gps/views/gps_page'

describe 'GpsPage', ->
  beforeEach ->
    @view = new GpsPage()

  it 'shows a button for loading your current location', ->
    DOM.append @view.render().el

    expect(@view.$el.find('a#gps').length).to.not.eq(0)
    expect(@view.$el.find('a#gps').text()).to.include 'location'
