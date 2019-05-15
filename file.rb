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
    #js code
    # const  stopsBetweenStations=function(StartLine, StartSation, EndLine,EndStation){
    #     const startStationIndex= subwayLine[StartLine].indexOf(StartSation);
    #     const endStationIndex= subwayLine[endLine].indexOf(endSation);
    #     if(StartLine===endLine){
    #       return  Math.abs(startStationIndex-endStationIndex);
    #     }
    # const startLineParkStreetIndex = subwayLine[StartLine].indexOf("park street");
    # //get the index of the endLine park street station 
    # const tripToParkStreet =Math.abs(startStationIndex-startLineParkStreetIndex);
  
    # const endLineParkStreetIndex =subwayLine[endLine].indexOf("park street");
  
    # const tripToDesnation=Math.abs(endStationIndex-endLineParkStreetIndex);
  
    # const totalTrip = tripToDesnation+tripToParkStreet;
    # return totalTrip;

    startStationIndex = subway[startLine.intern].find_index(startStation)
    endStationIndex = subway[endLine.intern ].find_index(endStation)

    if startLine === endLine
        (startStationIndex - endStationIndex).abs
    end 

    startLineParkStreetIndex = subway[startLine.intern ].find_index('Park Street')
    tripToParkStreet = (startStationIndex - startLineParkStreetIndex).abs

    endLineParkStreetIndex = subway[endLine.intern ].find_index('Park Street')
    tripToDestination = (endStationIndex - endLineParkStreetIndex).abs

    totalTrip = tripToParkStreet + tripToDestination 


    puts "You must travel through the following stops on the #{startLine} Line"
    #print the stations range of start line 
    puts "#{subway[startLine.to_sym ][startLineParkStreetIndex..startStationIndex]}"
    puts "Change at Park Street"
    puts "Your trip continues through the following stops on #{endLine} Line"
    #print the stations range of end  line 
    puts "#{subway[endLine.to_sym ][endStationIndex..endLineParkStreetIndex]}"
    puts "#{totalTrip} stops in total" 

end 

def entringTripStation
    puts "Enter starting line: "
    lineStart = gets.chomp 
    puts "Enter start station: "
    stationStart = gets.chomp
    puts "Enter ending line: "
    lineEnd = gets.chomp
    puts "Enter end station:  "
    stationEnd = gets.chomp
end 