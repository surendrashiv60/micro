class Privilege < ActiveRecord::Base
  attr_accessible :action, :controller, :is_active, :privilege_description, :privilege_name, :system_module_id
  has_and_belongs_to_many :groups
  belongs_to :system_module
end
