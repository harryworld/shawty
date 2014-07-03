require 'rails_helper'

RSpec.describe Url, :type => :model do
  it "is valid with a url" do
    url = Url.new
    url.original = 'http://www.techcrunch.com/'
    url.save

    expect(url).to be_valid
  end
end
