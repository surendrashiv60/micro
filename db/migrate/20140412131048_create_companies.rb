class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company_name
      t.text :company_address
      t.string :contact_person
      t.string :email
      t.date :application_due_date
      t.integer :no_of_contact
      t.boolean :is_active

      t.timestamps
    end
  end
end
