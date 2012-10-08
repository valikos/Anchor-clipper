require 'spec_helper'

describe Clipper do

  before(:each) do
    @attr = {
      :url => 'google.com.ua'
    }
    @Clipper = Clipper.new(@attr)
  end

  it "Should create a new instance given valid attributes" do
    Clipper.create!(@attr)
  end

  it "Should generate clip by id after record save" do
    clipper = Clipper.create!(@attr)
    clipper.create_clip!
    clipper.clip.should_not be_blank
  end

  it "Clip should be equal by id in 36 notation system" do
    clipper = Clipper.create!(@attr)
    clipper.create_clip!
    clipper.id.should be_equal clipper.clip.to_i(36)
  end

  it "Check the valid url is should be true" do
    @Clipper.check_url?.should be_true
  end

  it "Check the invalid url is should be false" do
    @Clipper.url = ('werwert.xvsd')
    @Clipper.check_url?.should_not be_true
  end
end