class CreateScheduleContacts < ActiveRecord::Migration
  def up
    create_table :schedule_contacts do |t|
      t.string :name
      t.integer :contact_no
      t.references :reminders
    end
  end

  def down
	drop_table :schedule_contacts
  end
end
