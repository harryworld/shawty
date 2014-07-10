require 'rails_helper'

RSpec.describe Contact, :type => :model do
  it "is valid with 3 fields" do
    c = Contact.new
    c.name = 'Harry'
    c.email = 'harry@ga.co'
    c.message = 'Hello'
    c.save

    expect(c).to be_valid
  end

  it "is invalid without a name" do
    c = Contact.new
    c.email = 'harry@ga.co'
    c.message = 'Hello'
    c.save

    expect(c).to be_invalid
  end

  it "is invalid without an email" do
    c = Contact.new
    c.name = 'Harry'
    c.message = 'Hello'
    c.save

    expect(c).to be_invalid
  end

  it "is invalid without a message" do
    c = Contact.new
    c.name = 'Harry'
    c.email = 'harry@ga.co'
    c.save

    expect(c).to be_invalid
  end
end
