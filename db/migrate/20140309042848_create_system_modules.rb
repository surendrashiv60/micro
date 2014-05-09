class CreateSystemModules < ActiveRecord::Migration
  def change
    create_table :system_modules do |t|
      t.string :system_module_name
      t.text :system_module_description
      t.integer :system_module_order
      t.boolean :is_active

      t.timestamps
    end
  end
end
