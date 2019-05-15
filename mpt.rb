

def  stopsBetweenStations(start_line,start_station,end_line,end_station)
    sub_station ={
    red : ['South Station',
      'Park Street',
      'Kendall',
      'Central',
      'Harvard',
      'Porter',
      'Davis',
      'Alewife'
    ],
    green : [
        'Government Center',
        'Park Street',
        'Boylston',
        'Arlington',
        'Copley',
        'Hynes',
        'Kenmore'
    ],
    orange : [
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
  @start_line= start_line
  @start_station= start_station
  @end_line = end_line
  @end_station = end_station
   if @start_line === @end_line 
        start_trib = sub_station[:start_line].index(start_station.to_sym)     
        end_trib= sub_station[:end_line].index(end_station.to_sym)
        total = end_trib - start_trib 
        p total

   end

end
 stopsBetweenStations('red','Kendall','red','Alewife')

#  array.index {|h| h[:id] == 34 } 
# def add(a,b)
#     a+b 
# end 
# add(3,6)
