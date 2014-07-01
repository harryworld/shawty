require 'rails_helper'

feature 'visit the site' do
  scenario 'Hello World!' do
    visit '/'
    expect(page).to have_content 'Hi, there!'
  end
end