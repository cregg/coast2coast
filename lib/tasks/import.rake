require 'csv'
require 'pry'
namespace :import do 
	task :week => :environment do
		CSV.foreach("lib/scrapers/results.csv", headers: true) do |row|
			row = row.to_hash
			find_hash = {:week_number => row[:week_number], :team => row[:team_number]}
			week = Week.find_or_initialize_by(find_hash)
			week.update(row)
			week.save
			puts week.persisted?
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
			statsHash[:gaa] = 10.0
			statsHash[:wins] = 0
			statsHash[:save_p] = 0
			statsHash[:saves] = 0
			statsHash[:pims] = 0
			statsHash
		end

		weeks = Week.all.order(:week_number)
		statsHash = init_hash
		teamHash = Hash.new
		weeks.each_index do | index |
			if weeks[index].goals > statsHash[:goals]
				statsHash[:goals] = weeks[index].goals
				teamHash[:goalteam] 	= weeks[index].team
			end
			if weeks[index].assists > statsHash[:assists]
				statsHash[:assists] = weeks[index].assists
				teamHash[:assistteam] 	= weeks[index].team
			end
			if weeks[index].pims > statsHash[:pims]
				statsHash[:pims] = weeks[index].pims
				teamHash[:pimteam] 	= weeks[index].team
			end
			if weeks[index].hits > statsHash[:hits]
				statsHash[:hits] = weeks[index].hits
				teamHash[:hitteam] = weeks[index].team
			end
			if weeks[index].ppp > statsHash[:ppp]
				statsHash[:ppp] = weeks[index].ppp
				teamHash[:pppteam] 	= weeks[index].team
			end
			if weeks[index].blocks > statsHash[:blocks]
				statsHash[:blocks] = weeks[index].blocks
				teamHash[:blockteam] 	= weeks[index].team
			end
			if weeks[index].gaa < statsHash[:gaa]
				statsHash[:gaa] = weeks[index].gaa
				teamHash[:gaateam] 	= weeks[index].team
			end
			if weeks[index].wins > statsHash[:wins]
				statsHash[:wins] = weeks[index].wins
				teamHash[:winteam] 	= weeks[index].team
			end
			if weeks[index].save_p > statsHash[:save_p]
				statsHash[:save_p] = weeks[index].save_p
				teamHash[:save_pteam] 	= weeks[index].team
			end
			if weeks[index].saves > statsHash[:saves]
				statsHash[:saves] = weeks[index].saves
				teamHash[:saveteam] 	= weeks[index].team
			end
			if weeks[index].plus_minus > statsHash[:plus_minus]
				statsHash[:plus_minus] = weeks[index].plus_minus
				teamHash[:plus_minusteam] 	= weeks[index].team
			end

			if index % 10 == 9
				teamHash[:week] = weeks[index].week_number
				TeamOfTheWeek.create! teamHash
				statsHash = init_hash
			end
		end
	end
end