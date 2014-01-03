require 'csv'
require 'pry'
namespace :import do 
	task :week => :environment do
		CSV.foreach("lib/scrapers/results.csv", headers: true) do |row|
			values = row.to_hash
			Week.create! values
		end
	end
end