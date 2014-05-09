class ContactGroupsController < ApplicationController
  before_filter :authorization
  # GET /contact_groups
  # GET /contact_groups.json
  def index
    @contact_groups = ContactGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contact_groups }
    end
  end

  # GET /contact_groups/1
  # GET /contact_groups/1.json
  def show
    @contact_group = ContactGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contact_group }
    end
  end

  # GET /contact_groups/new
  # GET /contact_groups/new.json
  def new
    @contact_group = ContactGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contact_group }
    end
  end

  # GET /contact_groups/1/edit
  def edit
    @contact_group = ContactGroup.find(params[:id])
  end

  # POST /contact_groups
  # POST /contact_groups.json
  def create
    @contact_group = ContactGroup.new(params[:contact_group])

    respond_to do |format|
      if @contact_group.save
        format.html { redirect_to contact_groups_path, notice: 'Contact group was successfully created.' }
        format.json { render json: @contact_group, status: :created, location: @contact_group }
      else
        format.html { render action: "new" }
        format.json { render json: @contact_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contact_groups/1
  # PUT /contact_groups/1.json
  def update
    @contact_group = ContactGroup.find(params[:id])

    respond_to do |format|
      if @contact_group.update_attributes(params[:contact_group])
        format.html { redirect_to contact_groups_path, notice: 'Contact group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contact_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_groups/1
  # DELETE /contact_groups/1.json
  def destroy
    @contact_group = ContactGroup.find(params[:id])
    @contact_group.destroy

    respond_to do |format|
      format.html { redirect_to contact_groups_url }
      format.json { head :no_content }
    end
  end
end
