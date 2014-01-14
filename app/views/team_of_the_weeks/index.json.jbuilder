json.array!(@team_of_the_weeks) do |team_of_the_week|
  json.extract! team_of_the_week, 
  json.url team_of_the_week_url(team_of_the_week, format: :json)
end