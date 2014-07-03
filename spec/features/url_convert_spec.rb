require 'rails_helper'

feature 'convert the url' do
  scenario 'Form exists' do
    visit '/'
    expect(find('#link')).to have_button('Submit')
  end

  scenario 'Get the converted URL' do
    visit '/'
    within('#link') do
      fill_in 'url', :with => 'http://www.google.com/'
      click_on 'Submit'
    end
    expect(current_path).to eq('/url')
  end
end