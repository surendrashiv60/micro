class SmsTemplatesController < ApplicationController
  before_filter :authorization
  # GET /sms_templates
  # GET /sms_templates.json
  def index
    @sms_templates = SmsTemplate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sms_templates }
    end
  end

  # GET /sms_templates/1
  # GET /sms_templates/1.json
  def show
    @sms_template = SmsTemplate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sms_template }
    end
  end

  # GET /sms_templates/new
  # GET /sms_templates/new.json
  def new
    @sms_template = SmsTemplate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sms_template }
    end
  end

  # GET /sms_templates/1/edit
  def edit
    @sms_template = SmsTemplate.find(params[:id])
  end

  # POST /sms_templates
  # POST /sms_templates.json
  def create
    @sms_template = SmsTemplate.new(params[:sms_template])

    respond_to do |format|
      if @sms_template.save
        format.html { redirect_to sms_templates_path, notice: 'Sms template was successfully created.' }
        format.json { render json: @sms_template, status: :created, location: @sms_template }
      else
        format.html { render action: "new" }
        format.json { render json: @sms_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sms_templates/1
  # PUT /sms_templates/1.json
  def update
    @sms_template = SmsTemplate.find(params[:id])

    respond_to do |format|
      if @sms_template.update_attributes(params[:sms_template])
        format.html { redirect_to sms_templates_path, notice: 'Sms template was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sms_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sms_templates/1
  # DELETE /sms_templates/1.json
  def destroy
    @sms_template = SmsTemplate.find(params[:id])
    @sms_template.destroy

    respond_to do |format|
      format.html { redirect_to sms_templates_url }
      format.json { head :no_content }
    end
  end
end
