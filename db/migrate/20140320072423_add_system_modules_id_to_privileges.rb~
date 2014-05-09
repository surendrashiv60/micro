class AddSystemModulesIdToPrivileges < ActiveRecord::Migration
  def self.up
	add_column :privileges, :system_module_id, :integer
  end
  def self.down
	remove_column :privileges, :system_module_id
  end
end
