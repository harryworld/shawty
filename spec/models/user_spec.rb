require 'rails_helper'

RSpec.describe User, :type => :model do
  it "is invalid if the first name is empty" do
    user = User.new
    user.last_name = 'Ng'
    user.save

    expect(user).to be_invalid
  end

  it "is invalid if the last name is empty" do
    user = User.new
    user.first_name = 'Harry'
    user.save

    expect(user).to be_invalid
  end
end
