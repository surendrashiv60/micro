class GroupsController < ApplicationController
  before_filter :authorization

  # GET /groups
  # GET /groups.json
  def index
    @groups = Group.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @groups }
    end
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
    @group = Group.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @group }
    end
  end

  # GET /groups/new
  # GET /groups/new.json
  def new
    @group = Group.new
    @system_modules = SystemModule.where("is_active = ?", true)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @group }
    end
  end

  # GET /groups/1/edit
  def edit
    @group = Group.find(params[:id])
    @system_modules = SystemModule.where("is_active = ?", true)
    @group_privileges = @group.privileges
  end

  # POST /groups
  # POST /groups.json
  def create
    @group = Group.new(params[:group])
    
    params[:privilege_ids].each do |privilege|
	@group.privileges << Privilege.find(privilege)
    end

    respond_to do |format|
      if @group.save
        format.html { redirect_to groups_path, notice: 'Group was successfully created.' }
        format.json { render json: @group, status: :created, location: @group }
      else
        format.html { render action: "new" }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /groups/1
  # PUT /groups/1.json
  def update
    @group = Group.find(params[:id])
    @group_privileges = @group.privilege_ids

    @checked_privileges = params[:privilege_ids].map {|privilege| privilege.to_i}
    @common_privileges = (@group_privileges & @checked_privileges)

    # delete privileges
    @delete_privileges = @group_privileges - @common_privileges
    if !@delete_privileges.blank?
	@delete_privileges.each do |privilege|
		@group.privileges.delete(Privilege.find(privilege))
	end
    end
    # insert privileges
    @insert_privileges = @checked_privileges - @common_privileges
    if !@insert_privileges.blank?
	@insert_privileges.each do |privilege|
		@group.privileges << Privilege.find(privilege)
	end
    end

    respond_to do |format|
      if @group.update_attributes(params[:group])
        format.html { redirect_to groups_path, notice: 'Group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group = Group.find(params[:id])
    @group.destroy

    respond_to do |format|
      format.html { redirect_to groups_url }
      format.json { head :no_content }
    end
  end
end
