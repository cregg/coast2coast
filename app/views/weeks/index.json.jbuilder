json.array!(@weeks) do |week|
  json.extract! week, :week_number, :team, :goals, :assists, :plus_minus, :ppp, :hits, :blocks, :wins, :gaa, :saves, :save_p
  json.url week_url(week, format: :json)
end