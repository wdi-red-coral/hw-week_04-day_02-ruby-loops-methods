TRAIN = {
        Red: ["South Station",
          "Park Street",
          "Kendall",
          "Central",
          "Harvard",
          "Porter",
          "Davis",
          "Alewife"
        ],
        Green: [
            "Government Center",
            "Park Street",
            "Boylston",
            "Arlington",
            "Copley",
            "Hynes",
            "Kenmore"
        ],
        Orange: [
          "North Station",
            "Haymarket",
            "Park Street",
            "State",
            "Downtown Crossing",
            "Chinatown",
            "Back Bay",
            "Forest Hills"
        ]
    }
    def stations(sLine,s_station,end_line,destination)
        start_point = TRAIN[sLine.to_sym].index(s_station);
        end_point = TRAIN[end_line.to_sym].index(destination);
        points_station =  (start_point - end_point).abs
        
        if sLine == end_line
            puts points_station
            
    else
        output = []
        fLine = (TRAIN[sLine.to_sym].index(s_station) - TRAIN[sLine.to_sym].index("Park Street")).abs
        ndLine = (TRAIN[end_line.to_sym].index("Park Street") - TRAIN[end_line.to_sym].index(destination)).abs
        totalTrip = fLine + ndLine
        p output.push(sLine,s_station,end_line,destination)
        puts "total trip #{totalTrip} stops"
        
    end
end
stations("Red","Alewife","Green","Arlington")

 
