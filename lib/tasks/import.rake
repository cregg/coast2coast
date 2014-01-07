require 'csv'
require 'pry'
namespace :import do 
	task :week => :environment do
		CSV.foreach("lib/scrapers/results.csv", headers: true) do |row|
			Week.create! row.to_hash
		end
	end
end