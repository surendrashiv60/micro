class ContactGroup < ActiveRecord::Base
  attr_accessible :contact_group_description, :contact_group_name, :is_active
  has_many :contacts
end
