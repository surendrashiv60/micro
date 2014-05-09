class CreateGroupsRoles < ActiveRecord::Migration
  def up
	create_table :groups_roles, :id => false do |t|
		t.references :groups
		t.references :roles
	end
  end

  def down
	drop_table :groups_roles
  end
end
