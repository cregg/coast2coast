class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.integer :week_number
      t.string :team
      t.integer :goals
      t.integer :assists
      t.integer :plus_minus
      t.integer :ppp
      t.integer :hits
      t.integer :blocks
      t.integer :wins
      t.float :gaa
      t.integer :saves
      t.float :save_p

      t.timestamps
    end
  end
end
