class Group < ActiveRecord::Base
  attr_accessible :group_description, :group_name, :is_active
  has_and_belongs_to_many :roles
  has_and_belongs_to_many :privileges
end
