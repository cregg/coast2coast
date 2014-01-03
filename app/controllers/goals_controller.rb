class GoalsController < ApplicationController
  helper_method :weekly_team_goals, :goal_totals, 
  :cumulative_team_goals
  def home
  end

  def weekly_team_goals(name)
  	team_weeks = Week.where(team: name).take(15)
  	team_goals_array = team_weeks.map {|y| y.goals}
  	team_goals_array.pop
  	team_goals_array
  end

  def goal_totals
  	weeks = Week.all.order(:team)
  	results = Array.new(Array.new)
  	name_and_goals = Array.new
  	name = "At the Helm"
  	total_goals = 0
  	weeks.each do |week|
  		if week.team == name
  			total_goals = week.goals + total_goals
  		else
  			name_and_goals = name_and_goals << name << total_goals
  			results = results << name_and_goals
  			name = week.team
  			total_goals = week.goals
  			name_and_goals = Array.new			
  		end
  	end
  	name_and_goals = name_and_goals << name << total_goals
  	results = results << name_and_goals
  end

  def cumulative_team_goals(name)
  	team_weeks = Week.where(team: name).take(15)
  	team_goals_array = team_weeks.map {|y| y.goals}
  	team_goals_array.pop
  	team_goals_array.each_index do |index|
  		next if index == 0
  		team_goals_array[index] = team_goals_array[index] + team_goals_array[index-1]
  	end 
  	team_goals_array
  end

end
