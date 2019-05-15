STATION = [ {
   red : [
     "South Station"
     "Park Street"
     "Kendall"
     "Central"
    " Harvard"
     "Porter"
    "Davis"
     "Alewife"
   ] ,

   green : [
    "Government Center"
    "Park Street"
    "Boylston"
    "Arlington"
    "Copley"
    "Hynes"
    "Kenmore"
   ],
   orange :[
    "North Station"
    "Haymarket"
    "Park Street"
    "State"
    "Downtown Crossing"
    "Chinatown"
    "Back Bay"
    "Forest Hills"
    ]
}

] 

def stops_between_stations (start_line, start_station, end_line, end_station)

    if (start_line==end_line) 
        x=(STATION[start_line.to_sym].index(start_station)-STATION[end_line.to_sym].index(end_station)).abs
            puts "#{x} stops"
    else 
        a = (STATION[start_line.to_sym].index(start_station) - STATION[start_line.to_sym].index("Park Street")).abs
        b = (STATION[end_line.to_sym].index(end_station) - STATION[end_line.to_sym].index("Park Street")).abs
        puts "#{a + b} stops"
    end
 end


        stops_between_stations('Red', 'Alewife', 'Red', 'Alewife')
        stops_between_stations('Red', 'Alewife', 'Red', 'South Station')
        stops_between_stations('Red', 'South Station', 'Green', 'Kenmore')
