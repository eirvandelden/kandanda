require 'spec_helper'

describe 'Hello world' do
  before do
    visit '/index.html'
  end

  it 'shows a greeting' do
    expect(page).to have_text 'Here is a list of assignments for the Maji Mobile Training'
  end
end
