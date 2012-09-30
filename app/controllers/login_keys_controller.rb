class LoginKeysController < ApplicationController
  # GET /login_keys
  # GET /login_keys.json
  def index
    @login_keys = LoginKey.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @login_keys }
    end
  end

  # GET /login_keys/1
  # GET /login_keys/1.json
  def show
    @login_key = LoginKey.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @login_key }
    end
  end

  # GET /login_keys/new
  # GET /login_keys/new.json
  def new
    @login_key = LoginKey.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @login_key }
    end
  end

  # GET /login_keys/1/edit
  def edit
    @login_key = LoginKey.find(params[:id])
  end

  # POST /login_keys
  # POST /login_keys.json
  def create
    @login_key = LoginKey.new(params[:login_key])

    respond_to do |format|
      if @login_key.save
        format.html { redirect_to @login_key, notice: 'Login key was successfully created.' }
        format.json { render json: @login_key, status: :created, location: @login_key }
      else
        format.html { render action: "new" }
        format.json { render json: @login_key.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /login_keys/1
  # PUT /login_keys/1.json
  def update
    @login_key = LoginKey.find(params[:id])

    respond_to do |format|
      if @login_key.update_attributes(params[:login_key])
        format.html { redirect_to @login_key, notice: 'Login key was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @login_key.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /login_keys/1
  # DELETE /login_keys/1.json
  def destroy
    @login_key = LoginKey.find(params[:id])
    @login_key.destroy

    respond_to do |format|
      format.html { redirect_to login_keys_url }
      format.json { head :no_content }
    end
  end
end
