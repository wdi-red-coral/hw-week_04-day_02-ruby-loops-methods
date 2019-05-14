$line = {
    red: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
    green: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
    orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
}


def stops_between_stations(start_line, start_station, end_line, end_station)
    min = [$line[start_line.downcase.to_sym].index(start_station), $line[end_line.downcase.to_sym].index(end_station)].min
    max = [$line[start_line.downcase.to_sym].index(start_station), $line[end_line.downcase.to_sym].index(end_station)].max

    if start_line == end_line
        stops = $line[start_line.downcase.to_sym][min ... max] do |station|
        station
        end

        stops.reverse! if $line[start_line.downcase.to_sym].index(start_station) > $line[end_line.downcase.to_sym].index(end_station)

    else
        start_cross = [$line[start_line.downcase.to_sym].index("Park Street"), min].max
        min = [$line[start_line.downcase.to_sym].index("Park Street"), min].min
        end_cross = [$line[start_line.downcase.to_sym].index("Park Street"), max].min
        max = [$line[start_line.downcase.to_sym].index("Park Street"), max].max

        stops = $line[start_line.downcase.to_sym][min + 1 .. start_cross] do |station|
            station
        end

        stops.reverse! if $line[start_line.downcase.to_sym].index("Park Street") < $line[start_line.downcase.to_sym].index(start_station)

        stops_ = $line[end_line.downcase.to_sym][end_cross + 1 .. max] do |station|
            station
        end

        stops_.reverse! if $line[end_line.downcase.to_sym].index("Park Street") > $line[end_line.downcase.to_sym].index(end_station)
        stops += stops_
    end
    
   {
       stops: stops.length,
       stations: stops.join(" and ")
   }

end

p stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
p stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
p stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6