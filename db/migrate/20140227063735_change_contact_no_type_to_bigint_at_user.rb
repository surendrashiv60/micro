class ChangeContactNoTypeToBigintAtUser < ActiveRecord::Migration
  def up
	change_column :users, :contact_no, :bigint
  end

  def down
	change_column :users, :contact_no, :integer
  end
end
