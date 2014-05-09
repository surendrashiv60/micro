class SystemModule < ActiveRecord::Base
  attr_accessible :is_active, :system_module_description, :system_module_name, :system_module_order
  has_many :privileges
end
