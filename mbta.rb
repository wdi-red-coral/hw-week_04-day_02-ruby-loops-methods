##### Two solutions
############################# 1) My comlicated solution 
def stops_between_stations (start_line, start_station, end_line, end_station)
        subway = [
        { name: "Red",
            stations: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"] },
                { name: "Green",
            stations: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"] },
                { name: "Orange",
            stations: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"] }]
        stops_count = 0
        new_arr = []
        if start_line == end_line ######## 1 
        subway.each do |hash| 
            if hash[:name] == start_line
                hash[:stations].each_with_index do |station, index| # loop through the stations array
                    if hash[:stations].index(start_station) < hash[:stations].index(end_station) 
                        if station == start_station 
                            for station in hash[:stations]
                                if station == end_station
                                break
                                end
                            stops_count += 1 
                            end
                        end
                    else
                        if station == end_station
                            for station in hash[:stations] 
                                if station == start_station
                                break
                                end 
                            stops_count += 1 
                            end 
                        end
                    end
                end # end each_with index
            end #  if hash name end 
        end # each end 
        end # end if 
        
        if start_line != end_line ####### 2 if different lines - one way !! not park street 
            # stops from start station til park street
            puts stops_count
            if start_station == "Park Street" ### 1 
                subway.each do |hash|
                    if hash[:name] == end_line
                        for station in hash[:name]
                            if station == end_station
                            break
                            end 
                            stops_count += 1
                        end # for end 
                        stops_count = stops_count - hash[:stations].index("Park Street") # hash[:stations].index(end_station) - hash[:stations].index("Park Street") # instead of for 
                    end # end hash name = endline
                end # each end  

            elsif end_station == "Park Street" ### 2 ## end if start station == park street 
                subway.each do |hash| 
                    if hash[:name] == start_line
                        stops_count = (hash[:stations].index(start_station) - hash[:stations].index("Park Street")).abs
                    end
                end # each end 
            else # nither # end elsif end station == PS
                
                subway.each do |hash|
                    if hash[:name] == start_line
                        for station in hash[:stations]
                            if station == "Park Street"
                            break
                            end
                            new_arr.push(station)
                        end # for end
                    end # if hash end 
                end # each end 
                
                subway.each do |hash|
                    if hash[:name] == end_line
                        for station in hash[:stations]
                            new_arr.push(station)
                        end # for end
                        shift_times = 1 + hash[:stations].index("Park Street")
                        shift_times.times { new_arr.shift } 
                    end # if hash end 
                end # each end 
                stops_count = new_arr.length
            end # else neither end
            puts stops_count
        end # big elsif end ## if endline != startline
        # end 
        if start_station == end_station
            puts "There are 0 stops"
        else 
            puts "There are #{stops_count} stops"
        end
end # end method 

stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0 
stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6

################################################## solution 1 completed 


######################### 2) same as my js solution 
def stops_between_stations (start_line, start_station, end_line, end_station)
    subway = {
        Red: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
        Green: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
        Orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
    }
    stops_count = 0
    if (start_line == end_line)
        stops_count = (subway[start_line.to_sym].index(end_station) - subway[start_line.to_sym].index(start_station)).abs
    else # if same line end ## if different lines
        if start_station == "Park Street"
            stops_count = (subway[end_line.to_sym].index(end_station) - subway[end_line.to_sym].index("Park Street")).abs
        elsif end_station == "Park street" # if start at PS end
            stops_count = (subway[start_line.to_sym].index("Park Street") - subway[start_line.to_sym].index(start_station)).abs
        else # if endstation at PS end # nither start or end at PS
            stops_count = (subway[start_line.to_sym].index(start_station) - subway[start_line.to_sym].index("Park Street")).abs + (subway[end_line.to_sym].index("Park Street") - subway[end_line.to_sym].index(end_station)).abs
        end # nither 'else' end
    end # main else end

    puts "There's #{stops_count} stops till end station"
end # method end

stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0 
stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6