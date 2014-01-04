# # Place all the behaviors and hooks related to the matching controller here.
# # All this logic will automatically be available in application.js.
# # You can use CoffeeScript in this file: http://coffeescript.org/
# initialize: ->
# 	wbw = @$('#wpw-chart').highcharts
# 	  chart:
# 	    type: 'line'
# 	  title:
# 	    text: 'Assists Per Week'
# 	  xAxis:
# 	    categories: ['Week 1', 'Week 2', 'Week 3', 'Week 4', 'Week 5', 'Week 6', 'Week 7', 'Week 8', 'Week 9', 'Week 10', 'Week 11', 'Week 12']
# 	  yAxis:
# 	    title:
#         text: 'Assists'
# 	    min: 0
#         legend:
#           floating: true
#           backgroundColor: "#FFFFFF"
#           align: 'center'
#           verticalAlign: 'top'
#           y: 40
#         series: [
#           name: "At the Helm"
#           data: <%= weekly_team_assists("At the Helm") %>
#           , 
#           name: "Big Douche-Hayne"
#           data: <%= weekly_team_assists("Big Douche-Hayne") %>
#           , 
#           name: "Chris's Team"
#           data: <%= weekly_team_assists("Chris's Team") %>
#           , 
#           name: "Double Pennertration"
#           data: <%= weekly_team_assists("Double Pennertration") %>
#           ,
#           name: "Hamhuis Sandwich's"
#           data: <%= weekly_team_assists("Hamhuis Sandwich's") %>
#           , 
#           name: "Keith's Great Team"
#           data: <%= weekly_team_assists("Keith's Great Team") %>
#           , 
#           name: "Lookin Sharp"
#           data: <%= weekly_team_assists("Lookin Sharp") %>
#           , 
#           name: "Teemu's Salami"
#           data: <%= weekly_team_assists("Teemu's Salami") %>
#           , 
#           name: "The Saadfather"
#           data: <%= weekly_team_assists("The Saadfather") %>
#           ,
#           name: "Yippee Kai Yo Paille"
#           data: <%= weekly_team_assists("Yippee Kai Yo Paille") %>
#           ]