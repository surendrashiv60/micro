class ReportsController < ApplicationController
  before_filter :authorization
  def index
	@reminders = Reminder.all
	@contacts = Array.new
  end

  def show
	@reminders = Reminder.all
	@reminder = Reminder.find(params[:reminder_id])
	@contacts = @reminder.schedule_contacts
  end
end
