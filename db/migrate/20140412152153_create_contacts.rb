class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.integer :contact_no
      t.date :date_of_birth
      t.text :address

      t.timestamps
    end
  end
end
