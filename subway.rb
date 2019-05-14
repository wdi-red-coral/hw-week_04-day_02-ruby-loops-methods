
=begin
    - method that calculate the stop point between stations and lines 
    - print the stations between each line 
    - print how many times have been stop 
=end
def stops_between_stations (startLine, startStation, endLine, endStation)
    subway  = {
        Red:[
            'South Station','Park Street','Kendall','Central',
            'Harvard', 'Porter','Davis','Alewife'
        ],
        Green:[
            'Government Center','Park Street','Boylston','Arlington',
            'Copley','Hynes','Kenmore'
        ],
        Orange:[
            'North Station','Haymarket','Park Street','State',
            'Downtown Crossing','Chinatown','Back Bay','Forest Hills'
        ],
    }
    
    startStationIndex = subway[startLine.intern].find_index(startStation)
    endStationIndex = subway[endLine.intern ].find_index(endStation)
 
    if startLine === endLine
        (startStationIndex - endStationIndex).abs
    end 
=begin
.intern => returns the Symbol corresponding to str
which means startLine value = "Red" will conver to be :Red 
=end
    startLineParkStreetIndex = subway[startLine.intern ].find_index('Park Street')
    tripToParkStreet = (startStationIndex - startLineParkStreetIndex).abs

    endLineParkStreetIndex = subway[endLine.intern ].find_index('Park Street')
    tripToDestination = (endStationIndex - endLineParkStreetIndex).abs

    totalTrip = tripToParkStreet + tripToDestination 
=begin
here is some printing message  
that inform the user his trip path and how many times he have to stop 
=end
    puts "You must travel through the following stops on the #{startLine} Line"
    #print the stations range of start line 
    puts "#{subway[startLine.to_sym ][startLineParkStreetIndex..startStationIndex]}"
    puts "Change at Park Street"
    puts "Your trip continues through the following stops on #{endLine} Line"
    #print the stations range of end  line 
    puts "#{subway[endLine.to_sym ][endStationIndex..endLineParkStreetIndex]}"
    puts "#{totalTrip} stops in total" 

end 

#example to to test the method 
stops_between_stations("Orange", "State", "Red", "South Station")
stops_between_stations("Red", "Alewife", "Red", "South Station")

=begin
method that take the user inputs for the stations lines and names 
=end
def entringTripStation
    puts "Enter starting line: "
    lineStart = gets.chomp 
    puts "Enter start station: "
    stationStart = gets.chomp
    puts "Enter ending line: "
    lineEnd = gets.chomp
    puts "Enter end station:  "
    stationEnd = gets.chomp
    #call the stops_between_stations to check the stop stations of user input 
    stops_between_stations(lineStart, stationStart, lineEnd, stationEnd)
end 
#example to test the meethod 
entringTripStation()