class Company < ActiveRecord::Base
  attr_accessible :application_due_date, :company_address, :company_name, :contact_person, :email, :is_active, :no_of_contact
end
