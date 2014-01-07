class PimController < ApplicationController
  helper_method :weekly_team_pims, :pim_totals, 
  :cumulative_team_pims

  def weekly_team_pims(name)
  	team_weeks = Week.where(team: name).take(15)
  	team_pims_array = team_weeks.map {|y| y.pims}
  	team_pims_array
  end

  def pim_totals
  	weeks = Week.all.order(:team)
  	results = Array.new(Array.new)
  	name_and_pims = Array.new
  	name = "At the Helm"
  	total_pims = 0
  	weeks.each do |week|
  		if week.team == name
  			total_pims = week.pims + total_pims
  		else
  			name_and_pims = name_and_pims << name << total_pims
  			results = results << name_and_pims
  			name = week.team
  			total_pims = week.pims
  			name_and_pims = Array.new			
  		end
  	end
  	name_and_pims = name_and_pims << name << total_pims
  	results = results << name_and_pims
  end

  def cumulative_team_pims(name)
  	team_weeks = Week.where(team: name).take(15)
  	team_pims_array = team_weeks.map {|y| y.pims}
  	team_pims_array.each_index do |index|
  		next if index == 0
  		team_pims_array[index] = team_pims_array[index] + team_pims_array[index-1]
  	end 
  	team_pims_array
  end

  def pimdata
  end
end
