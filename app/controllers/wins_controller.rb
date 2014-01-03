class WinsController < ApplicationController
  helper_method :weekly_team_wins, :win_totals, 
  :cumulative_team_wins

  def weekly_team_wins(name)
  	team_weeks = Week.where(team: name).take(15)
  	team_wins_array = team_weeks.map {|y| y.wins}
  	team_wins_array.pop
  	team_wins_array
  end

  def win_totals
  	weeks = Week.all.order(:team)
  	results = Array.new(Array.new)
  	name_and_wins = Array.new
  	name = "At the Helm"
  	total_wins = 0
  	weeks.each do |week|
  		if week.team == name
  			total_wins = week.wins + total_wins
  		else
  			name_and_wins = name_and_wins << name << total_wins
  			results = results << name_and_wins
  			name = week.team
  			total_wins = week.wins
  			name_and_wins = Array.new			
  		end
  	end
  	name_and_wins = name_and_wins << name << total_wins
  	results = results << name_and_wins
  end

  def cumulative_team_wins(name)
  	team_weeks = Week.where(team: name).take(15)
  	team_wins_array = team_weeks.map {|y| y.wins}
  	team_wins_array.pop
  	team_wins_array.each_index do |index|
  		next if index == 0
  		team_wins_array[index] = team_wins_array[index] + team_wins_array[index-1]
  	end 
  	team_wins_array
  end

  def winsdata
  end
end
