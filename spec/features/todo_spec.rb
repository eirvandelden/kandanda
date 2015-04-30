require 'spec_helper'

describe 'Todo App' do
  before do
    visit '/index.html'
    click_link 'A3: Collections and CollectionViews'
  end

  it 'displays newly added todos' do
    fill_in 'todo', with: 'get groceries'
    click_link 'Add'

    expect(page).to have_text 'get groceries'
  end
end
