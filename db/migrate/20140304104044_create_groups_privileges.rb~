class CreateGroupsPrivileges < ActiveRecord::Migration
  def up
	create_table :groups_privileges, :id => false do |t|
		t.references :groups
		t.references :privileges
	end
  end

  def down
	drop_table :groups_privileges
  end
end
