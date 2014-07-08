class Url < ActiveRecord::Base
  before_save :check_url_http, :convert_url

  validate :check_com

  def check_url_http
    self.original = 'http://' + self.original
  end

  def check_com
    unless self.original.include? ".com"
      self.errors.add :base, "the original URL should contain .com"
    end
  end

  def convert_url
    self.converted = 'http://localhost:3000/' + random_string
  end

  def random_string
    (0...6).map { (65 + rand(26)).chr }.join
  end
end
