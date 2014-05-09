class RemindersController < ApplicationController
  before_filter :authorization
  # GET /reminders
  # GET /reminders.json
  def index
    @reminders = Reminder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reminders }
    end
  end

  # GET /remiders/1
  # GET /remiders/1.json
  def show
    @reminder = Reminder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reminder }
    end
  end

  # GET /remiders/new
  # GET /remiders/new.json
  def new
    @reminder = Reminder.new
    @contact_groups = ContactGroup.where("is_active = ?", true)
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reminder }
    end
  end

  # GET /reminders/1/edit
  def edit
    @reminder = Reminder.find(params[:id])
    @schedule_contacts = @reminder.schedule_contacts
    @contact_groups = ContactGroup.where("is_active = ?", true)
  end

  # POST /reminders
  # POST /reminders.json
  def create
    @reminder = Reminder.new(params[:reminder])

    respond_to do |format|
      if @reminder.save
        # add contacts to schedule_contact table
	@loop_over_count = params[:contact_number_name_list].length
	
    	for @i in 0..(@loop_over_count-1)
		@reminder.schedule_contacts.create(:name => params[:contact_number_name_list][@i], :contact_no => params[:contact_number_list][@i], :status => "Pending")
   	end
        format.html { redirect_to reminders_path, notice: 'Reminder was successfully created.' }
        format.json { render json: @reminder, status: :created, location: @reminder }
      else
        format.html { render action: "new" }
        format.json { render json: @reminder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reminders/1
  # PUT /reminders/1.json
  def update
    @reminder = Reminder.find(params[:id])

    $current_contact_list = params[:contact_number_list]
    $previous_contact_list = @reminder.schedule_contacts.map {|contact| contact.contact_no.to_s}
    
    @common_contacts = ($current_contact_list & $previous_contact_list)
  
    # delete contacts
    @delete_contacts = $previous_contact_list - @common_contacts
    if !@delete_contacts.blank?
	@delete_contacts.each do |contact|
		@reminder.schedule_contacts.delete(ScheduleContact.where("contact_no = ? AND reminder_id = ?", contact, @reminder.id))
	end
    end
   
    # insert contacts
    @insert_contacts = $current_contact_list - @common_contacts
    if !@insert_contacts.blank?
	@insert_contacts.each do |contact|
		@i = params[:contact_number_list].index(contact)
		@reminder.schedule_contacts.create(:name => params[:contact_number_name_list][@i], :contact_no => contact, :status => "Pending")
	end
    end


    respond_to do |format|
      if @reminder.update_attributes(params[:reminder])
        format.html { redirect_to reminders_path, notice: 'Reminder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reminder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reminders/1
  # DELETE /reminders/1.json
  def destroy
    @reminder = Reminder.find(params[:id])
    @reminder.destroy

    

    respond_to do |format|
      format.html { redirect_to reminders_url }
      format.json { head :no_content }
    end
  end
end
