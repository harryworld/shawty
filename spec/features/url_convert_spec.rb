require 'rails_helper'

feature 'convert the url' do
  scenario 'Form exists' do
    visit '/'
    expect(find('#link')).to have_button('Submit')
  end
end