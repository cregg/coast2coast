require "pry"
require "CSV"
require "rubygems"
require "bundler/setup"
require "capybara"
require "capybara/dsl"
require "capybara-webkit"
require "pry"
require "csv"

Capybara.run_server = false
Capybara.current_driver = :selenium


module Scraper
  class Sports
    include Capybara::DSL
        def get_results
          session = Capybara::Session.new(:webkit)
          session.visit('http://hockey.fantasysports.yahoo.com/')
          session.click_link('Sign In')
          session.click_link('Google')
          new_window = session.driver.browser.window_handles.last
           
          session.within_window new_window do
            sign_in session
          end
          
          
          session.within(:css, '#sitenav') do
            session.click_link('League')
          end

          weeks = Array.new(get_week_number(session))
          
          (12..(weeks.length - 1)).each do |i|
            (1..10).step(2) do |j|
              session.visit("http://hockey.fantasysports.yahoo.com/hockey/21031/matchup?week=#{i+1}&mid1=#{j}&mid2=#{j+1}") 
              weeks[i] = weeks[i].merge get_matchup_hash session unless weeks[i] == nil
              weeks[i] = get_matchup_hash session if weeks[i] == nil
            end
            puts weeks
          end
          
          to_CSV(weeks)

        end

        def sign_in(session)
          session.fill_in('Email', :with => 'craigleclair4@gmail.com')
          session.fill_in('Password', :with => 'hooplaH911')
          session.click_button('Sign in')
        end

        def get_week_number(session)
          week = session.all(:css, '.flyout-title').first.text
          week = week[5, 8].to_i
          
        end

        def get_matchup_hash(session)
          puts session.current_url
          team1 = session.find(:css, '#matchup-wall-header .First .Grid-u a').text
          team2 = session.find(:css, '#matchup-wall-header .Last .Grid-u a').text
          
          team1_stats = Hash.new
          team2_stats = Hash.new
          

          header_stats_text = session.all(:css, '#matchup-wall-header .First.Last .Ta-c div')
          team1_stats_text = session.all(:css, '#matchup-wall-header .First td.Ta-c')
          team2_stats_text = session.all(:css, '#matchup-wall-header .Alt .Ta-c')
          
          for i in 0..(header_stats_text.length - 1)
            team1_stats[header_stats_text[i].text] = team1_stats_text[i].text
            team2_stats[header_stats_text[i].text] = team2_stats_text[i].text
          end
          
          week = {team1 => team1_stats, team2 => team2_stats}
        end

      def get_weekly_stats(session)
        for i in 1..5
          matchup = session.find(:css,".Listitem:nth-child(#{i}) .Pstart-xl")
          matchup.click
          stats = stats.merge get_matchup_hash session unless stats == nil
          stats = get_matchup_hash session if stats == nil
          session.within(:css, '#sitenav') do
            session.click_link('League')
          end
        end
          stats
      end

      def to_CSV(weeks)
        column_names = ["Week", "Team Name", "G", "A", "+/-", "PIM", "PPP", "HIT", "BLK", "W", "GAA", "SV", "SV%", "Score"]
        CSV.open("results.csv", "wb") do |csv|
          weeks.each_index do |index|
            next if weeks[index] == nil
            weeks[index].keys.each do |key|
              values = weeks[index][key].values
              values = values.unshift(key)
              values = values.unshift(index)
              csv << values
            end
          end
        end
      end
    end
end

spider = Scraper::Sports.new
spider.get_results