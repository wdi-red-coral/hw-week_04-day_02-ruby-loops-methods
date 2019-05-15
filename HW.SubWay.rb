    
Stops_stations = { 
    Red :['South Station',
    'Park Street',
    'Kendall',
    'Central',
    'Harvard',
    'Porter',
    'Davis',
    'Alewife'
    ]
    Green :[
    'Government Center',
    'Park Street',
    'Boylston',
    'Arlington',
    'Copley',
    'Hynes',
    'Kenmore'
    ]
    Orange :[
    ' North Station',
    'Haymarket',
    'Park Street',
    'State',
    'Downtown Crossing',
    'Chinatown',
    'Back Bay',
    'Forest Hills'
    ]
}

def stops_stations(startLine, startStation, endLine, endStation)
    
    if (startLine == endLine && startStation == endStation)
        puts ((startStation.index) - (endStation.index)).abs
        
    elsif (startline == endline && startStation != endStation)
        puts ((startStation.index) - (endStation.index)).abs

    elsif (startline != endline && startStation != endStation)
        puts ((startline.index - endline.index) && (startStation.index) - (endStation.index)).abs  
    end
end 

stops_stations('Red', 'Alewife', 'Red', 'Alewife') 
stops_stations('Red', 'Alewife', 'Red', 'South Station')
stops_stations('Red', 'South Station', 'Green', 'kenmore')
