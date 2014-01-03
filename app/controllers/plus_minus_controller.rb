class PlusMinusController < ApplicationController
  helper_method :weekly_team_plus_minus, :plus_minus_totals, 
  :cumulative_team_plus_minus

  def weekly_team_plus_minus(name)
  	team_weeks = Week.where(team: name).take(15)
  	team_plus_minus_array = team_weeks.map {|y| y.plus_minus}
  	team_plus_minus_array.pop
  	team_plus_minus_array
  end

  def plus_minus_totals
  	weeks = Week.all.order(:team)
  	results = Array.new(Array.new)
  	name_and_plus_minus = Array.new
  	name = "At the Helm"
  	total_plus_minus = 0
  	weeks.each do |week|
  		if week.team == name
  			total_plus_minus = week.plus_minus + total_plus_minus
  		else
  			name_and_plus_minus = name_and_plus_minus << name << total_plus_minus
  			results = results << name_and_plus_minus
  			name = week.team
  			total_plus_minus = week.plus_minus
  			name_and_plus_minus = Array.new			
  		end
  	end
  	name_and_plus_minus = name_and_plus_minus << name << total_plus_minus
  	results = results << name_and_plus_minus
  end

  def cumulative_team_plus_minus(name)
  	team_weeks = Week.where(team: name).take(15)
  	team_plus_minus_array = team_weeks.map {|y| y.plus_minus}
  	team_plus_minus_array.pop
  	team_plus_minus_array.each_index do |index|
  		next if index == 0
  		team_plus_minus_array[index] = team_plus_minus_array[index] + team_plus_minus_array[index-1]
  	end 
  	team_plus_minus_array
  end

  def pmdata
  end
end
