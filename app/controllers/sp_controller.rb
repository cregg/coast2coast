class SpController < ApplicationController
  helper_method :weekly_team_save_p, :save_p_totals, 
  :cumulative_team_save_p

  def weekly_team_save_p(name)
  	team_weeks = Week.where(team: name)
  	team_save_p_array = team_weeks.map {|y| y.save_p}
    team_save_p_array = team_save_p_array.map {|y| y.to_f}
  end

  def cumulative_team_save_p(name)
  	team_weeks = Week.where(team: name)
  	team_save_p_array = team_weeks.map {|y| y.save_p}
  	team_save_p_array.each_index do |index|
  		next if index == 0
  		team_save_p_array[index] = compute_average(team_save_p_array, index)
  	end
    team_save_p_array = team_save_p_array.map {|y| y.to_f.round(3) } 
  end

  def compute_average_array(array_of_save_p)
    duplicate = array_of_save_p
    array_of_save_p.each_index do |index|
      array_of_save_p[index] = compute_average(duplicate, index)
    end
    array_of_save_p
  end

  def compute_average(array_of_save_p, index)
    total = 0
    count = index
    while(count >= 0) do
      total = total + array_of_save_p[count]
      count = count - 1 
    end
    total = total / (index + 1.0)
  end
    
  def save_pdata
  end
end
