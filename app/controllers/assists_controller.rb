class AssistsController < ApplicationController
  helper_method :weekly_team_assists, :assist_totals, 
  :cumulative_team_assists

  def weekly_team_assists(name)
  	team_weeks = Week.where(team: name)
  	team_assists_array = team_weeks.map {|y| y.assists}
  	team_assists_array
  end

  def assist_totals
  	weeks = Week.all.order(:team)
  	results = Array.new(Array.new)
  	name_and_assists = Array.new
  	name = "At the Helm"
  	total_assists = 0
  	weeks.each do |week|
  		if week.team == name
  			total_assists = week.assists + total_assists
  		else
  			name_and_assists = name_and_assists << name << total_assists
  			results = results << name_and_assists
  			name = week.team
  			total_assists = week.assists
  			name_and_assists = Array.new
  		end
  	end
  	name_and_assists = name_and_assists << name << total_assists
  	results = results << name_and_assists
  end

  def cumulative_team_assists(name)
  	team_weeks = Week.where(team: name)
  	team_assists_array = team_weeks.map {|y| y.assists}
  	team_assists_array.each_index do |index|
  		next if index == 0
  		team_assists_array[index] = team_assists_array[index] + team_assists_array[index-1]
  	end 
  	team_assists_array
  end

  def assistsdata
  end
end
