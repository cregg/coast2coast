class AddSavePToTeamOfTheWeek < ActiveRecord::Migration
  def change
    add_column :team_of_the_weeks, :save_pteam, :string
  end
end
