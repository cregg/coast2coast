class PppController < ApplicationController
  helper_method :weekly_team_ppp, :ppp_totals, 
  :cumulative_team_ppp

  def weekly_team_ppp(name)
  	team_weeks = Week.where(team: name).take(15)
  	team_ppp_array = team_weeks.map {|y| y.ppp}
  	team_ppp_array.pop
  	team_ppp_array
  end

  def ppp_totals
  	weeks = Week.all.order(:team)
  	results = Array.new(Array.new)
  	name_and_ppp = Array.new
  	name = "At the Helm"
  	total_ppp = 0
  	weeks.each do |week|
  		if week.team == name
  			total_ppp = week.ppp + total_ppp
  		else
  			name_and_ppp = name_and_ppp << name << total_ppp
  			results = results << name_and_ppp
  			name = week.team
  			total_ppp = week.ppp
  			name_and_ppp = Array.new			
  		end
  	end
  	name_and_ppp = name_and_ppp << name << total_ppp
  	results = results << name_and_ppp
  end

  def cumulative_team_ppp(name)
  	team_weeks = Week.where(team: name).take(15)
  	team_ppp_array = team_weeks.map {|y| y.ppp}
  	team_ppp_array.pop
  	team_ppp_array.each_index do |index|
  		next if index == 0
  		team_ppp_array[index] = team_ppp_array[index] + team_ppp_array[index-1]
  	end 
  	team_ppp_array
  end

  def pppdata
  end
end
