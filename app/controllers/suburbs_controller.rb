class SuburbsController < ApplicationController
  # GET /suburbs
  # GET /suburbs.json
  def index
    @suburbs = Suburb.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @suburbs }
    end
  end

  # GET /suburbs/1
  # GET /suburbs/1.json
  def show
    @suburb = Suburb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @suburb }
    end
  end

  # GET /suburbs/new
  # GET /suburbs/new.json
  def new
    @suburb = Suburb.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @suburb }
    end
  end

  # GET /suburbs/1/edit
  def edit
    @suburb = Suburb.find(params[:id])
  end

  # POST /suburbs
  # POST /suburbs.json
  def create
    @suburb = Suburb.new(params[:suburb])

    respond_to do |format|
      if @suburb.save
        format.html { redirect_to @suburb, notice: 'Suburb was successfully created.' }
        format.json { render json: @suburb, status: :created, location: @suburb }
      else
        format.html { render action: "new" }
        format.json { render json: @suburb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /suburbs/1
  # PUT /suburbs/1.json
  def update
    @suburb = Suburb.find(params[:id])

    respond_to do |format|
      if @suburb.update_attributes(params[:suburb])
        format.html { redirect_to @suburb, notice: 'Suburb was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @suburb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suburbs/1
  # DELETE /suburbs/1.json
  def destroy
    @suburb = Suburb.find(params[:id])
    @suburb.destroy

    respond_to do |format|
      format.html { redirect_to suburbs_url }
      format.json { head :ok }
    end
  end
end
