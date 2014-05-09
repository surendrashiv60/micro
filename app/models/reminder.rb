class Reminder < ActiveRecord::Base
  attr_accessible :at_date, :at_time, :description, :message, :recurrence, :title, :contact_number_name_list, :contact_number_list, :contact_group_id, :is_active

has_many :schedule_contacts, dependent: :destroy
end
