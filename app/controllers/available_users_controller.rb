class AvailableUsersController < ApplicationController
  # GET /available_users
  # GET /available_users.json
  def index
    @available_users = AvailableUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @available_users }
    end
  end

  # GET /available_users/1
  # GET /available_users/1.json
  def show
    @available_user = AvailableUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @available_user }
    end
  end

  # GET /available_users/new
  # GET /available_users/new.json
  def new
    @available_user = AvailableUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @available_user }
    end
  end

  # GET /available_users/1/edit
  def edit
    @available_user = AvailableUser.find(params[:id])
  end

  # POST /available_users
  # POST /available_users.json
  def create
    @available_user = AvailableUser.new(params[:available_user])

    respond_to do |format|
      if @available_user.save
        format.html { redirect_to @available_user, notice: 'Available user was successfully created.' }
        format.json { render json: @available_user, status: :created, location: @available_user }
      else
        format.html { render action: "new" }
        format.json { render json: @available_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /available_users/1
  # PUT /available_users/1.json
  def update
    @available_user = AvailableUser.find(params[:id])

    respond_to do |format|
      if @available_user.update_attributes(params[:available_user])
        format.html { redirect_to @available_user, notice: 'Available user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @available_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /available_users/1
  # DELETE /available_users/1.json
  def destroy
    @available_user = AvailableUser.find(params[:id])
    @available_user.destroy

    respond_to do |format|
      format.html { redirect_to available_users_url }
      format.json { head :no_content }
    end
  end
end
