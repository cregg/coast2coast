class AddPimsToWeek < ActiveRecord::Migration
  def change
    add_column :weeks, :pims, :integer
  end
end
