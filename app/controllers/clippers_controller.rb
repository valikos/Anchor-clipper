class ClippersController < ApplicationController

  def index
    @clipper = Clipper.new
  end

  def show
    clip = Clipper.find_by_clip(params[:id])
    if clip
      redirect_to clip.url and return
    else
      redirect_to root_path
    end
  end

  def create
    @clipper = Clipper.new(params[:clipper])
    respond_to do |format|
      if @clipper.save
        @clipper.create_clip!
        format.html { redirect_to root_path, notice: 'Looks good' }
        format.json { render json: @clipper, status: :created, location: @clipper }
      else
        format.html do
          flash[:error] = 'Error'
          redirect_to root_path
        end
        format.json { render json: @clipper.errors, status: :unprocessable_entity }
      end
    end
  end
end