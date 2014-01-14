class CreateTeamOfTheWeeks < ActiveRecord::Migration
  def change
    create_table :team_of_the_weeks do |t|

      t.timestamps
    end
  end
end
