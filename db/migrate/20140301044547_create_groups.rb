class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :group_name
      t.text :group_description
      t.boolean :is_active

      t.timestamps
    end
  end
end
