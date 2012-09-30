class SeasMatchesController < ApplicationController
  # GET /seas_matches
  # GET /seas_matches.json
  def index
    @seas_matches = SeasMatch.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @seas_matches }
    end
  end

  # GET /seas_matches/1
  # GET /seas_matches/1.json
  def show
    @seas_match = SeasMatch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @seas_match }
    end
  end

  # GET /seas_matches/new
  # GET /seas_matches/new.json
  def new
    @seas_match = SeasMatch.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @seas_match }
    end
  end

  # GET /seas_matches/1/edit
  def edit
    @seas_match = SeasMatch.find(params[:id])
  end

  # POST /seas_matches
  # POST /seas_matches.json
  def create
    @seas_match = SeasMatch.new(params[:seas_match])

    respond_to do |format|
      if @seas_match.save
        format.html { redirect_to @seas_match, notice: 'Seas match was successfully created.' }
        format.json { render json: @seas_match, status: :created, location: @seas_match }
      else
        format.html { render action: "new" }
        format.json { render json: @seas_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /seas_matches/1
  # PUT /seas_matches/1.json
  def update
    @seas_match = SeasMatch.find(params[:id])

    respond_to do |format|
      if @seas_match.update_attributes(params[:seas_match])
        format.html { redirect_to @seas_match, notice: 'Seas match was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @seas_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seas_matches/1
  # DELETE /seas_matches/1.json
  def destroy
    @seas_match = SeasMatch.find(params[:id])
    @seas_match.destroy

    respond_to do |format|
      format.html { redirect_to seas_matches_url }
      format.json { head :no_content }
    end
  end
end
