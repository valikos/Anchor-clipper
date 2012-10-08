class Clipper < ActiveRecord::Base
  attr_accessible :url

  validates :url, :presence => true, :format => {:with => /^((http|https):\/\/)?[a-z0-9]+([-.]{1}[a-z0-9]+).[a-z]{2,5}(:[0-9]{1,5})?(\/.)?$/ix}

  def create_clip!
    self.clip = self.id.to_s(36)
    self.save
  end

  def check_url?
    ua = Curl::Easy.http_head(self.url)
    rescue
      false
    else
      code = ua.status.match(/^[0-9]{3}/)[0]
      %w'200 301 302 300'.include?(code) ? true : false
  end
end