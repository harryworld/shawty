class Url < ActiveRecord::Base
  before_save :check_url_http

  validate :check_com

  def check_url_http
    self.original = 'http://' + self.original
  end

  def check_com
    unless self.original.include? ".com"
      self.errors.add :base, "the original URL should contain .com"
    end
  end
end
