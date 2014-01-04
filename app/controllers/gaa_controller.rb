class GaaController < ApplicationController
  helper_method :weekly_team_gaa, :gaa_totals, 
  :cumulative_team_gaa

  def weekly_team_gaa(name)
  	team_weeks = Week.where(team: name).take(15)
  	team_gaa_array = team_weeks.map {|y| y.gaa }
    team_gaa_array = team_gaa_array.map {|y| y.to_f }
    team_gaa_array.pop
  	team_gaa_array
  end

  def cumulative_team_gaa(name)
  	team_weeks = Week.where(team: name).take(15)
  	team_gaa_array = team_weeks.map {|y| y.gaa}
  	team_gaa_array.pop
  	team_gaa_array = compute_average_array team_gaa_array
    team_gaa_array = team_gaa_array.map {|y| y.to_f.round(2)}
  end

  def compute_average_array(array_of_gaa)
    duplicate = array_of_gaa
    array_of_gaa.each_index do |index|
      array_of_gaa[index] = compute_average(duplicate, index)
    end
    array_of_gaa
  end

  def compute_average(array_of_gaa, index)  
    total = 0
    count = index
    while(count >= 0) do
      total = total + array_of_gaa[count]
      count = count - 1
    end
    total = total / (index + 1.0)
  end

  def gaadata
  end
end
