class SavesController < ApplicationController
  helper_method :weekly_team_saves, :save_totals, 
  :cumulative_team_saves

  def weekly_team_saves(name)
  	team_weeks = Week.where(team: name).take(15)
  	team_saves_array = team_weeks.map {|y| y.saves}
  	team_saves_array.pop
  	team_saves_array
  end

  def save_totals
  	weeks = Week.all.order(:team)
  	results = Array.new(Array.new)
  	name_and_saves = Array.new
  	name = "At the Helm"
  	total_saves = 0
  	weeks.each do |week|
  		if week.team == name
  			total_saves = week.saves + total_saves
  		else
  			name_and_saves = name_and_saves << name << total_saves
  			results = results << name_and_saves
  			name = week.team
  			total_saves = week.saves
  			name_and_saves = Array.new			
  		end
  	end
  	name_and_saves = name_and_saves << name << total_saves
  	results = results << name_and_saves
  end

  def cumulative_team_saves(name)
  	team_weeks = Week.where(team: name).take(15)
  	team_saves_array = team_weeks.map {|y| y.saves}
  	team_saves_array.pop
  	team_saves_array.each_index do |index|
  		next if index == 0
  		team_saves_array[index] = team_saves_array[index] + team_saves_array[index-1]
  	end 
  	team_saves_array
  end

  def savedata
  end
end
