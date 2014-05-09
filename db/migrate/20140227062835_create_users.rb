class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :gender
      t.integer :contact_no
      t.text :address
      t.boolean :is_active

      t.timestamps
    end
  end
end
