class BlocksController < ApplicationController
  helper_method :weekly_team_blocks, :block_totals, 
  :cumulative_team_blocks

  def weekly_team_blocks(name)
  	team_weeks = Week.where(team: name).take(15)
  	team_blocks_array = team_weeks.map {|y| y.blocks}
  	team_blocks_array
  end

  def block_totals
  	weeks = Week.all.order(:team)
  	results = Array.new(Array.new)
  	name_and_blocks = Array.new
  	name = "At the Helm"
  	total_blocks = 0
  	weeks.each do |week|
  		if week.team == name
  			total_blocks = week.blocks + total_blocks
  		else
  			name_and_blocks = name_and_blocks << name << total_blocks
  			results = results << name_and_blocks
  			name = week.team
  			total_blocks = week.blocks
  			name_and_blocks= Array.new			
  		end
  	end
  	name_and_blocks = name_and_blocks << name << total_blocks
  	results = results << name_and_blocks
  end

  def cumulative_team_blocks(name)
  	team_weeks = Week.where(team: name).take(15)
  	team_blocks_array = team_weeks.map {|y| y.blocks}
  	team_blocks_array.each_index do |index|
  		next if index == 0
  		team_blocks_array[index] = team_blocks_array[index] + team_blocks_array[index-1]
  	end 
  	team_blocks_array
  end

  def blocksdata
  end
end
