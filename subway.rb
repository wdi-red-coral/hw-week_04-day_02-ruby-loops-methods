SUBWAYLINES = {

    Red: ["South Station",
         "Park Street",
         "Kendall",
         "Central", 
         "Harvard",
         "Porter",
         "Davis",
         "Alewife"],
 
    Green: ["Government Center",
            "Park Street", 
            "Boylston", 
            "Arlington", 
            "Copley", 
            "Hynes", 
            "Kenmore"],
 
    Orange: ["North Station", 
             "Haymarket", 
             "Park Street", 
             "State", 
             "Downtown Crossing", 
             "Chinatown", 
             "Back Bay", 
             "Forest Hills"]
 
 }
 
 def stopsBetweenStations(startLine, startStation, endLine, endStation)
 # get the index of the startLine startStation
 startStationIndex = SUBWAYLINES[startLine.to_sym].index(startStation)
 # get the index of the end station
 endStationIndex = SUBWAYLINES[endLine.to_sym].index(endStation)
 
 / if both stops are on the same line then we don't need to bother with
 stopping at Park Street, we can simply figure out how far those stops are
 from each other and return that absolute value. /
 
 if(startLine == endLine) 
 return (startStationIndex - endStationIndex).abs
 end
 
 # get the index of the startLine Park Street station
 startLineParkStreetIndex = SUBWAYLINES[startLine.to_sym].index("Park Street")
 
 # get the index of the endline park street station
 tripToParkStreet = (startStationIndex - startLineParkStreetIndex).abs
 
 / calculate the difference between the start station index and Park Street index
 take the absolute value of that difference to get the trip to Park Street length /
 
 # get the index of the endLine Park Street station
 endLineParkStreetIndex = SUBWAYLINES[endLine.to_sym].index("Park Street")
 
 / calculate the difference between the end station index and end line Park Street index
 take the absolute value of that difference to get the trip to destination length /
 tripToDestination = (endStationIndex - endLineParkStreetIndex).abs
 
 # add the tripToParkStreet and tripToDestination to get the trip total
 totalTrip = tripToParkStreet + tripToDestination
end

# p stopsBetweenStations('startLine', 'startStation', 'endLine', 'endStation')