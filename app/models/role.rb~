class Role < ActiveRecord::Base
  attr_accessible :is_active, :role_description, :role_name
  has_and_belongs_to_many :users
  has_and_belongs_to_many :groups
end
