class UsersController < ApplicationController
  before_filter :authorization, except: [:new, :create]
  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    @roles = Role.where("is_active = ?", true)
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
    @roles = Role.where("is_active = ?", true)
    @user_roles = @user.roles
   
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
	params[:role_ids].each do |role|
		@user.roles << Role.find(role)
	end
	#format.html { redirect_to root_url, :notice => "Registered successfully.Please try to login."}
        format.html { redirect_to users_path, notice: 'User was successfully created.' }
        #format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        #format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])
    @user_roles = @user.role_ids

    @checked_roles = params[:role_ids].map {|role| role.to_i}
    @common_roles = (@user_roles & @checked_roles)

    # delete roles
    @delete_roles = @user_roles - @common_roles
    if !@delete_roles.blank?
	@delete_roles.each do |role|
		@user.roles.delete(Role.find(role))
	end
    end
    # insert roles
    @insert_roles = @checked_roles - @common_roles
    if !@insert_roles.blank?
	@insert_roles.each do |role|
		@user.roles << Role.find(role)
	end
    end
    
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to users_path, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end
