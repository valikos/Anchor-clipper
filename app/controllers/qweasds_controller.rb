class QweasdsController < ApplicationController
  # GET /qweasds
  # GET /qweasds.json
  def index
    @qweasds = Qweasd.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @qweasds }
    end
  end

  # GET /qweasds/1
  # GET /qweasds/1.json
  def show
    @qweasd = Qweasd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @qweasd }
    end
  end

  # GET /qweasds/new
  # GET /qweasds/new.json
  def new
    @qweasd = Qweasd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @qweasd }
    end
  end

  # GET /qweasds/1/edit
  def edit
    @qweasd = Qweasd.find(params[:id])
  end

  # POST /qweasds
  # POST /qweasds.json
  def create
    @qweasd = Qweasd.new(params[:qweasd])

    respond_to do |format|
      if @qweasd.save
        format.html { redirect_to @qweasd, notice: 'Qweasd was successfully created.' }
        format.json { render json: @qweasd, status: :created, location: @qweasd }
      else
        format.html { render action: "new" }
        format.json { render json: @qweasd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /qweasds/1
  # PUT /qweasds/1.json
  def update
    @qweasd = Qweasd.find(params[:id])

    respond_to do |format|
      if @qweasd.update_attributes(params[:qweasd])
        format.html { redirect_to @qweasd, notice: 'Qweasd was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @qweasd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qweasds/1
  # DELETE /qweasds/1.json
  def destroy
    @qweasd = Qweasd.find(params[:id])
    @qweasd.destroy

    respond_to do |format|
      format.html { redirect_to qweasds_url }
      format.json { head :no_content }
    end
  end
end
