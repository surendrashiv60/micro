class Contact < ActiveRecord::Base
  attr_accessible :address, :contact_no, :date_of_birth, :email, :name, :contact_group_id
  belongs_to :contact_group
end
