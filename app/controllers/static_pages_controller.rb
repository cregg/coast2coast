class StaticPagesController < ApplicationController
  helper_method :weekly_team_score, :team_totals, 
  :cumulative_team_score
  def home
  end

  def weekly_team_score(name)
  	team_weeks = Week.where(team: name)
  	team_score_array = team_weeks.map {|y| y.score}
    team_score_array
  end

  def team_totals
  	weeks = Week.all.order(:team)
  	results = Array.new(Array.new)
  	name_and_score = Array.new
  	name = "At the Helm"
  	total = 0
  	weeks.each do |week|
  		if week.team == name
  			total = week.score + total
  		else
  			name_and_score = name_and_score << name << total
  			results = results << name_and_score
  			name = week.team
  			total = week.score
  			name_and_score = Array.new			
  		end
  	end
  	name_and_score = name_and_score << name << total
  	results = results << name_and_score
  end

  def cumulative_team_score(name)
  	team_weeks = Week.where(team: name)
  	team_score_array = team_weeks.map {|y| y.score}
  	team_score_array.each_index do |index|
  		next if index == 0
  		team_score_array[index] = team_score_array[index] + team_score_array[index-1]
  	end
  	team_score_array
  end

end
