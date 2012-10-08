class ClippersController < ApplicationController

  def index
  end

  def create
    @Clipper = Clipper.new(params[:clipper])

    if Clipper.save
      @Clipper.create_clip!
    else

    end
  end
end
