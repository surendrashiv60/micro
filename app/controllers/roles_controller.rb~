class RolesController < ApplicationController
  before_filter :authorization
  # GET /roles
  # GET /roles.json
  def index
    @roles = Role.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @roles }
    end
  end

  # GET /roles/1
  # GET /roles/1.json
  def show
    @role = Role.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @role }
    end
  end

  # GET /roles/new
  # GET /roles/new.json
  def new
    @role = Role.new
    @groups = Group.where("is_active = ?", true)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @role }
    end
  end

  # GET /roles/1/edit
  def edit
    @role = Role.find(params[:id])
    @groups = Group.where("is_active = ?", true)
    @role_groups = @role.groups
  end

  # POST /roles
  # POST /roles.json
  def create
    @role = Role.new(params[:role])

    params[:group_ids].each do |group|
	@role.groups << Group.find(group)
    end

    respond_to do |format|
      if @role.save
        format.html { redirect_to roles_path, notice: 'Role was successfully created.' }
        format.json { render json: @role, status: :created, location: @role }
      else
        format.html { render action: "new" }
        format.json { render json: @role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /roles/1
  # PUT /roles/1.json
  def update
    @role = Role.find(params[:id])
    @role_groups = @role.group_ids

    @checked_groups = params[:group_ids].map {|group| group.to_i}
    @common_groups = (@role_groups & @checked_groups)

    # delete roles
    @delete_groups = @role_groups - @common_groups
    if !@delete_groups.blank?
	@delete_groups.each do |group|
		@role.groups.delete(Group.find(group))
	end
    end
    # insert roles
    @insert_groups = @checked_groups - @common_groups
    if !@insert_groups.blank?
	@insert_groups.each do |group|
		@role.groups << Group.find(group)
	end
    end

    respond_to do |format|
      if @role.update_attributes(params[:role])
        format.html { redirect_to roles_path, notice: 'Role was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roles/1
  # DELETE /roles/1.json
  def destroy
    @role = Role.find(params[:id])
    @role.destroy

    respond_to do |format|
      format.html { redirect_to roles_url }
      format.json { head :no_content }
    end
  end
end
