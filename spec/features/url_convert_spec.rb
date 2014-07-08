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
    expect(page).to have_content 'Success'
    expect(page).to have_content 'Visit Link'
  end

  scenario 'shortens URL' do
    visit '/'
    within('#link') do
      fill_in 'url', :with => 'http://www.google.com/'
      click_on 'Submit'
    end
    expect(page).to have_content 'Converted'
    expect(page).to have_content 'http://www.google.com/'
  end
end