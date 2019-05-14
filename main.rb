# # p subway_lines
# # p subway_lines[:Red][2]
# p subway_lines[:Red].index('Kendall')
# p subway_lines[:Red].index('Park Street')
def stops_between_stations (start_line, start_station, end_line, end_station)
    #[{[][][]}{[][][]}]
    subway_lines = {
        Red:[
        'South Station',
        'Park Street',
        'Kendall',
        'Central',
        'Harvard',
        'Porter',
        'Davis',
        'Alewife'],
        Green:[
        'Government Center',
        'Park Street',
        'Boylston',
        'Arlington',
        'Copley',
        'Hynes',
        'Kenmore'],
        Orange:[
        'North Station',
        'Haymarket',
        'Park Street',
        'State',
        'Downtown Crossing',
        'Chinatown',
        'Back Bay',
        'Forest Hills']
    }
    # Start and end station index
    start_station_index = subway_lines[start_line.to_sym].index(start_station)
    end_station_index = subway_lines[end_line.to_sym].index(end_station)
    # red and red or green green
    if start_line == end_line
      p "#{(end_station_index - start_station_index).abs} Stops"
    
    # not the same station
    else
        #start index of park street 
        start_line_park_street_index = subway_lines[start_line.to_sym].index('Park Street')
        # from start to park street
        trip_to_park_street = (start_station_index - start_line_park_street_index).abs
        #park street index for the end station
        end_line_park_street = subway_lines[end_line.to_sym].index('Park Street')
        #from park street to destnation
        trip_to_destnation = (end_station_index - end_line_park_street).abs
        #start to park street and from park street to destnation
        total_trip = trip_to_destnation + trip_to_park_street
        p "#{total_trip} Stops"
    end
    # if start_line == end_line
    #     puts subway_lines[end_line.to_sym].index(end_station) - subway_lines[start_line.to_sym].index(start_station)
    # else
    #     puts subway_lines[end_line.to_sym].index(end_station) + subway_lines[start_line.to_sym].index('Park Street')
    # end
        
    # p start_station_index
    # p end_station_index

end

# stops_between_stations('Red','Kendall','Red','Davis')
# stops_between_stations('Red', 'South Station', 'Green', 'Kenmore')
#stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
#stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6