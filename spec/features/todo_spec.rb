require 'spec_helper'

describe 'Todo App' do
  before do
    visit '/index.html'
  end

  it 'shows a header' do
    expect(page).to have_text 'Maji Todo App'
  end

  it 'displays newly added todos' do
    fill_in 'todo', with: 'get groceries'
    click_button 'Add'

    expect(page).to have_text 'get groceries'
    expect(page).to have_text 'Take photo'
    expect(page).to have_text 'Done'
  end
end