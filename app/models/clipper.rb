class Clipper < ActiveRecord::Base
  attr_accessible :url

  validates :url, :presence => true

  validate :url_should_be_exists

  def create_clip!
    self.clip = self.id.to_s(36)
    self.save
  end

  def exists_url?
    ua = Curl::Easy.http_head(self.url)
    rescue
      false
    else
      code = ua.status.match(/^[0-9]{3}/)[0]
      %w'200 301 302 300'.include?(code) ? true : false
  end

  def url_should_be_exists
    errors.add(:url, "url is not exists") unless exists_url?
  end
end