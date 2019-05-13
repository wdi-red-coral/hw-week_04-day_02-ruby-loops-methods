red_line = ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"]
green_line = ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"]
orange_line = ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]

stops_count = 0
start_station = ""
end_station = ""
start_line = ""
end_line = ""

# calc stops at one line - one way

# red
stops_count = 0
start_station = "South Station"
end_station = "Harvard"
red_line.each do |station| 
    if station == start_station
        for station in red_line 
            if station == end_station
            break
            end 
        stops_count += 1 
        end 
    end
end
p stops_count

# loops in until it finds start station
# increment
# if end station found => stop increment/ end loop

# calc stops at one line - two way
# if based on index - each_with_index, find_index
# if start station index < end station index => done
# else => if start station index > end station index 
# for loop starting from end staion , until start station is found 
red_line.each_with_index do |station, index|
    if red_line.index(start_station) < red_line.index(end_station)  
        if station == start_station
            for station in red_line 
                if station == end_station
                break
                end 
            stops_count += 1 
            end 
        end
    else 
        if station == end_station
            for station in red_line 
                if station == start_station
                break
                end 
            stops_count += 1 
            end 
        end

    end
end
p stops_count

#################################################################################

# for two lines 
subway = [
    { 
        name: "Red"
        stations: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"]
    },
    { 
        name: "Green"
        stations: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"]
    },
    { 
        name: "Orange"
        stations: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
    }
]
stops_count = 0
start_station = ""
end_station = ""
start_line = "Red"
end_line = "Green"
# for 2 lines -- one way
# start station is not park street
# end station is not park street
# 1 if same line - two ways !!!
if start_line == end_line
    subway.each do |hash| # if hash[:name] == start line => enter 
        if start_line.index(start_station) < end_line.index(end_station) # hash[:stations].index 
            if station == start_station
                for station in start_line
                    if station == end_station
                    break
                    end
                stops_count += 1 
                end
            end
        else
            if station == end_station
                for station in red_line 
                    if station == start_station
                    break
                    end 
                stops_count += 1 
                end 
            end
        end
    end # each end 
elsif start_line != end_line # 2 if different lines - one way !! not park street 
        # stops from start station til park street
    for station in start_line
        if station == "Park Street"
        break
        end
    stops_count += 1 
    end
    # stops from "park street" til end station
    for station in end_line
        if station == end_station
        break
        end
    stops_count += 1
    end
    stops_count -= end_line.index("Park Street")

end # elsif != end 
 p stops_count
 
 #################################################################################



subway.each do |hash|
    if start_line == "Red"
        #loop through the array aka key stations
        #startup count til it reaches park street 
    elsif start_line == "Green"
    elsif start_line == "Orange"
    end
end 

# for two lines - two way