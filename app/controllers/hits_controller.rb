class HitsController < ApplicationController
  helper_method :weekly_team_hits, :hit_totals, 
  :cumulative_team_hits

  def weekly_team_hits(name)
  	team_weeks = Week.where(team: name).take(15)
  	team_hits_array = team_weeks.map {|y| y.hits}
  	team_hits_array.pop
  	team_hits_array
  end

  def hit_totals
  	weeks = Week.all.order(:team)
  	results = Array.new(Array.new)
  	name_and_hits = Array.new
  	name = "At the Helm"
  	total_hits = 0
  	weeks.each do |week|
  		if week.team == name
  			total_hits = week.hits + total_hits
  		else
  			name_and_hits = name_and_hits << name << total_hits
  			results = results << name_and_hits
  			name = week.team
  			total_hits = week.hits
  			name_and_hits = Array.new			
  		end
  	end
  	name_and_hits = name_and_hits << name << total_hits
  	results = results << name_and_hits
  end

  def cumulative_team_hits(name)
  	team_weeks = Week.where(team: name).take(15)
  	team_hits_array = team_weeks.map {|y| y.hits}
  	team_hits_array.pop
  	team_hits_array.each_index do |index|
  		next if index == 0
  		team_hits_array[index] = team_hits_array[index] + team_hits_array[index-1]
  	end 
  	team_hits_array
  end
  
  def hitdata
  end
end
