require 'rails_helper'

feature 'Contact Us' do
  scenario 'Visit the Contact Us Form' do
    visit '/'
    expect(page).to have_content 'Contact'
  end

  scenario 'Submit the form' do
    visit '/contact'

    within('#contactForm') do
      fill_in 'name', :with => 'Harry Ng'
      fill_in 'email', :with => 'harry@ga.co'
      fill_in 'subject', :with => 'Welcome'
      fill_in 'message', :with => 'Hello World'
      click_on 'Submit'
    end

    expect(current_path).to eq '/contact'
    expect(page).to have_content 'Thank You!!'
  end
end