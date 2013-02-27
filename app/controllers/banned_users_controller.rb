class BannedUsersController < ApplicationController
  # GET /banned_users
  # GET /banned_users.json
  def index
    @banned_users = BannedUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @banned_users }
    end
  end

  # GET /banned_users/1
  # GET /banned_users/1.json
  def show
    @banned_user = BannedUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @banned_user }
    end
  end

  # GET /banned_users/new
  # GET /banned_users/new.json
  def new
    @banned_user = BannedUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @banned_user }
    end
  end

  # GET /banned_users/1/edit
  def edit
    @banned_user = BannedUser.find(params[:id])
  end

  # POST /banned_users
  # POST /banned_users.json
  def create
    @banned_user = BannedUser.new(params[:banned_user])

    respond_to do |format|
      if @banned_user.save
        format.html { redirect_to @banned_user, notice: 'Banned user was successfully created.' }
        format.json { render json: @banned_user, status: :created, location: @banned_user }
      else
        format.html { render action: "new" }
        format.json { render json: @banned_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /banned_users/1
  # PUT /banned_users/1.json
  def update
    @banned_user = BannedUser.find(params[:id])

    respond_to do |format|
      if @banned_user.update_attributes(params[:banned_user])
        format.html { redirect_to @banned_user, notice: 'Banned user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @banned_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banned_users/1
  # DELETE /banned_users/1.json
  def destroy
    @banned_user = BannedUser.find(params[:id])
    @banned_user.destroy

    respond_to do |format|
      format.html { redirect_to banned_users_url }
      format.json { head :no_content }
    end
  end
end
