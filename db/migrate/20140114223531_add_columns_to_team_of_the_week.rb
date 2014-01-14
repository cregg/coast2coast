class AddColumnsToTeamOfTheWeek < ActiveRecord::Migration
  def change
    add_column :team_of_the_weeks, :week, :string
    add_column :team_of_the_weeks, :goalteam, :string
    add_column :team_of_the_weeks, :assistteam, :string
    add_column :team_of_the_weeks, :plus_minusteam, :string
    add_column :team_of_the_weeks, :pimteam, :string
    add_column :team_of_the_weeks, :hitteam, :string
    add_column :team_of_the_weeks, :pppteam, :string
    add_column :team_of_the_weeks, :blockteam, :string
    add_column :team_of_the_weeks, :gaateam, :string
    add_column :team_of_the_weeks, :winteam, :string
    add_column :team_of_the_weeks, :saveteam, :string
  end
end
