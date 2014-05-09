class CreatePrivileges < ActiveRecord::Migration
  def change
    create_table :privileges do |t|
      t.string :privilege_name
      t.text :privilege_description
      t.string :controller
      t.string :action
      t.boolean :is_active

      t.timestamps
    end
  end
end
