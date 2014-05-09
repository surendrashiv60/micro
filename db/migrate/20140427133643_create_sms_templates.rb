class CreateSmsTemplates < ActiveRecord::Migration
  def change
    create_table :sms_templates do |t|
      t.text :message

      t.timestamps
    end
  end
end
