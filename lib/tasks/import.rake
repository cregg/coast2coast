require 'csv'
require 'pry'
namespace :import do 
	task :week => :environment do
		CSV.foreach("lib/scrapers/results.csv", headers: true) do |row|
			Week.create! row.to_hash
		end
	end

	task :tow => :environment do
		def init_hash
			statsHash = Hash.new
			statsHash[:goals] = 0
			statsHash[:assists] = 0
			statsHash[:plus_minus] = 0
			statsHash[:hits] = 0
			statsHash[:ppp] = 0
			statsHash[:blocks] = 0
			statsHash[:gaa] = 0
			statsHash[:wins] = 0
			statsHash[:save_p] = 0
			statsHash[:saves] = 0
			statsHash[:pims] = 0
			statsHash
		end

		weeks = Week.all.order(:week_number)
		weeks.each_index do | index |
			statsHash = init_hash if index % 10 == 0
			teamHash = Hash.new if index % 10 == 0
			binding.pry
			if weeks[index].goals > statsHash[:goals]
				statsHash[:goals] = weeks[index].goals
				teamHash[:goalteam] 	= weeks[index].team
			end
			if weeks[index].goals > statsHash[:assists]
				statsHash[:assists] = weeks[index].goals
				teamHash[:assistteam] 	= weeks[index].team
			end
			if weeks[index].goals > statsHash[:pims]
				statsHash[:pims] = weeks[index].goals
				teamHash[:pimteam] 	= weeks[index].team
			end
			if weeks[index].goals > statsHash[:hits]
				statsHash[:hits] = weeks[index].goals
				teamHash[:hitteam] 	= weeks[index].team
			end
			if weeks[index].goals > statsHash[:ppp]
				statsHash[:ppp] = weeks[index].goals
				teamHash[:pppteam] 	= weeks[index].team
			end
			if weeks[index].goals > statsHash[:blocks]
				statsHash[:blocks] = weeks[index].goals
				teamHash[:blockteam] 	= weeks[index].team
			end
			if weeks[index].goals < statsHash[:gaa]
				statsHash[:gaa] = weeks[index].goals
				teamHash[:gaateam] 	= weeks[index].team
			end
			if weeks[index].goals > statsHash[:wins]
				statsHash[:wins] = weeks[index].goals
				teamHash[:winteam] 	= weeks[index].team
			end
			if weeks[index].goals > statsHash[:save_p]
				statsHash[:save_p] = weeks[index].goals
				teamHash[:save_pteam] 	= weeks[index].team
			end
			if weeks[index].goals > statsHash[:saves]
				statsHash[:saves] = weeks[index].goals
				teamHash[:saveteam] 	= weeks[index].team
			end
			if weeks[index].goals > statsHash[:plus_minus]
				statsHash[:plus_minus] = weeks[index].goals
				teamHash[:plus_minusteam] 	= weeks[index].team
			end

			if index % 10 == 9
				teamHash[:week] = weeks[index].week_number
				TeamOfTheWeek.create! teamHash
			end
		end
	end
end