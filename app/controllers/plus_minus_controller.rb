class PlusMinusController < ApplicationController
  helper_method :weekly_team_plus_minus, :plus_minus_totals, 
  :cumulative_team_plus_minus, :high_low_pm

  def weekly_team_plus_minus(name)
  	team_weeks = Week.where(team: name)
  	team_plus_minus_array = team_weeks.map {|y| y.plus_minus}
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
  	team_weeks = Week.where(team: name)
  	team_plus_minus_array = team_weeks.map {|y| y.plus_minus}
  	team_plus_minus_array.each_index do |index|
  		next if index == 0
  		team_plus_minus_array[index] = team_plus_minus_array[index] + team_plus_minus_array[index-1]
  	end 
  	team_plus_minus_array
  end

  def high_low_pm
    weeks = Week.all.order(:team)
    results = Array.new(Array.new)
    high_low = Array.new
    name = "At the Helm"
    min = 0
    max = 0
    weeks.each do |week|
      if week.team == name
        min = week.plus_minus if week.plus_minus < min
        max = week.plus_minus if week.plus_minus > max 
      else
        high_low << min << max
        results << high_low
        name = week.team
        min = week.plus_minus
        max = week.plus_minus
        high_low = Array.new
      end
    end
    high_low << min << max
    results << high_low
  end

  def pmdata
  end
end
