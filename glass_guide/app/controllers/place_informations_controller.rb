class PlaceInformationsController < ApplicationController
  # GET /place_informations
  # GET /place_informations.json
  def index
    @place_informations = PlaceInformation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @place_informations }
    end
  end

  # GET /place_informations/1
  # GET /place_informations/1.json
  def show
    @place_information = PlaceInformation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @place_information }
    end
  end

  # GET /place_informations/new
  # GET /place_informations/new.json
  def new
    @place_information = PlaceInformation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @place_information }
    end
  end

  # GET /place_informations/1/edit
  def edit
    @place_information = PlaceInformation.find(params[:id])
  end

  # POST /place_informations
  # POST /place_informations.json
  def create
    @place_information = PlaceInformation.new(params[:place_information])

    respond_to do |format|
      if @place_information.save
        format.html { redirect_to @place_information, notice: 'Place information was successfully created.' }
        format.json { render json: @place_information, status: :created, location: @place_information }
      else
        format.html { render action: "new" }
        format.json { render json: @place_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /place_informations/1
  # PUT /place_informations/1.json
  def update
    @place_information = PlaceInformation.find(params[:id])

    respond_to do |format|
      if @place_information.update_attributes(params[:place_information])
        format.html { redirect_to @place_information, notice: 'Place information was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @place_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /place_informations/1
  # DELETE /place_informations/1.json
  def destroy
    @place_information = PlaceInformation.find(params[:id])
    @place_information.destroy

    respond_to do |format|
      format.html { redirect_to place_informations_url }
      format.json { head :no_content }
    end
  end

end
