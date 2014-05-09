class GraphsController < ApplicationController
  before_filter :authorization
  def index
	@reminders = Reminder.all
	@contacts = Array.new
  end

  def show
	@reminders = Reminder.all
	@reminder = Reminder.find(params[:reminder_id])
	@contacts = @reminder.schedule_contacts
	@pending_count = 0
	@delivered_count = 0
	@not_delivered_count = 0
	@contacts.each do |contact|
		puts contact.status
		if contact.status == "Pending"
			@pending_count += 1
		elsif contact.status == "Delivered"
			@delivered_count += 1
		else
			@not_delivered_count += 1
		end
	end
  end
end
