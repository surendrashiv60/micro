class CreateContactGroups < ActiveRecord::Migration
  def change
    create_table :contact_groups do |t|
      t.string :contact_group_name
      t.text :contact_group_description
      t.boolean :is_active

      t.timestamps
    end
  end
end
