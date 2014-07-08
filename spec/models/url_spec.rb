require 'rails_helper'

RSpec.describe Url, :type => :model do
  it "is valid with a url" do
    url = Url.new
    url.original = 'http://www.techcrunch.com/'
    url.save

    expect(url).to be_valid
  end

  it "will add http://" do
    url = Url.new
    url.original = 'www.google.com'
    url.save

    expect(url.original).to eq 'http://www.google.com'
  end

  it "is invalid if it does not contain .com" do
    url = Url.new
    url.original = 'generalassemb.ly'
    url.save

    expect(url).to be_invalid
  end

  it "is valid if it contains .com" do
    url = Url.new
    url.original = 'google.com'
    url.save

    expect(url).to be_valid
  end

  it "is invalid if the url does not start with http"

  it "is having 6 characters in random string" do
    url = Url.new
    url.original = "http://www.google.com/"
    url.save

    str = url.random_string
    expect(str.length).to eq 6
  end

  it "is having converted url" do
    url = Url.new
    url.original = "http://www.google.com/"
    url.save

    expect(url.converted).not_to be_nil
  end
end
