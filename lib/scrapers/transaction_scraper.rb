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
          begin
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
            
            transactions = get_transactions session
            oneTransaction = get_3 transactions
            twoTransactions = get_4 transactions
            binding.pry 
          rescue Exception => e
            puts e
            binding.pry
          end

        end

        def sign_in(session)
          session.fill_in('Email', :with => 'test')
          session.fill_in('Password', :with => 'test')
          session.click_button('Sign in')
        end
        def get_transactions(session)
            transactions = Array.new(Array.new)
            session.find(:css, '.Tst-link').click
            while(session.all(:css, '.Bdrtop a').last[:href] != nil)
              1.upto(25) do |index|
                transactions << session.all(:css, "tr:nth-child(#{index}) .F-timestamp , tr:nth-child(#{index}) a:nth-child(1)"). map {|link| link.text}      
              end
              break if session.all(:css, '.Bdrtop a').last.text != "Next 25"
              session.all(:css, '.Bdrtop a').last.click
            end
            transactions
        end

        def get_3(transactions)
          sizeOfOne = Array.new
          transactions.each do |transaction|
            sizeOfOne << transaction if transaction.count == 3
          end
          sizeOfOne
        end

        def get_4(transactions)
          sizeOfTwo = Array.new
          transactions.each do |transaction|
            sizeOfTwo << transaction if transaction.count == 4
          end
          sizeOfTwo
        end

    end
end

spider = Scraper::Sports.new
spider.get_results