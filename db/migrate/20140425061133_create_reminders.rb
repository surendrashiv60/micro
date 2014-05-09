class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :title
      t.text :description
      t.time :at_time
      t.date :at_date
      t.text :message
      t.string :recurrence

      t.timestamps
    end
  end
end
