class AddScoreToWeek < ActiveRecord::Migration
  def change
    add_column :weeks, :score, :integer
  end
end
