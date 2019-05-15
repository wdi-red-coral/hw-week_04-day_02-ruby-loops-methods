

    #{Red:[],Green:[],Orange:[]}
class Subway

   
    #[{Red:[]},{Grren:[]},{blue:[]}]

        def initialize (startLine, startStation, endLine, endStation) 
            @startLine = startLine
            @startStation = startStation
            @endLine = endLine
            @endStation = endStation
             @subwayLines ={ 
                Red: ['South Station', 'Park Street', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife'] , 
                Green: ['Government Center', 'Park Street', 'Boylston', 'Arlington', 'Copley', 'Hynes', 'Kenmore'] ,
                Orange: ['North Station', 'Haymarket', 'Park Street', 'State', 'Downtown Crossing', 'Chinatown', 'Back Bay', 'Forest Hills']
                }  
           self.check_stops
        end 
       
    #  def count_stops
    #     if @startLine == "Red"  
    #         self.Red 
    #     elsif 
    #         @startLine == "Green"  
    #         self.Green
    #     elsif 
    #         @startLine == "Orange"  
    #         self.Orange
    #     end 
    # end 

def check_stops 

    if @startLine == @endLine 
        start_station_index =  @subwayLines[@startLine.to_sym].index(@startStation)
        end_station_index =   @subwayLines[@startLine.to_sym].index(@endStation)
        numbers_stations_one_line = (start_station_index - end_station_index).abs
        # puts numbers_stations_one_line 
    else
        start_line_park_street_index = (@subwayLines[@startLine.to_sym].index(@startStation) -  @subwayLines[@startLine.to_sym].index('Park Street')).abs 
     end_line_park_street_index= (@subwayLines[@endLine.to_sym].index('Park Street') - @subwayLines[@endLine.to_sym].index(@endStation) ).abs 
    puts (end_line_park_street_index + start_line_park_street_index)
    end
          
end

#  @subwayLines[:Red].each do |lines| 
#     # p lines
    
    
#     #             if @startStation == @endStation  
#     #                 (start_station_index - end_station_index).abs + " stops" 
#     #             end   
#     #         start_line_park_street_index = @subwayLines[:Red].index('Park Street')
#     #         trip_to_park_street = (start_station_index - start_line_park_street_index).abs 

#     #         end_line_park_street_index = @subwayLines[:Red].index('Park Street');
#     #         trip_to_destination = (end_station_index - end_line_park_street_index).abs

#     #         puts  total_trip = trip_to_park_street + trip_to_destination
#     #     end
#      end 
# end  

# def Green 
#  @subwayLines[:Green].each do |lines| 
#         lines[:Green].each do |stations|
#             start_station_index =  stations.index(@startStation)
#             end_station_index =  stations.index(@endStation)
#                 if @startStation == @endStation  
#                     (start_station_index - end_station_index).abs + " stops" 
#                 end   
#             start_line_park_street_index = @subwayLines[:Green].index('Park Street')
#             trip_to_park_street = (start_station_index - start_line_park_street_index).abs 

#             end_line_park_street_index = @subwayLines[:Green].index('Park Street');
#             trip_to_destination = (end_station_index - end_line_park_street_index).abs

#             puts  total_trip = trip_to_park_street + trip_to_destination
#         end
#     end 
# end  


# def Orange 
#  @subwayLines[:Orange].each do |lines| 
#         lines[:Orange].each do |stations|
#             start_station_index = stations.index(@startStation)
#             end_station_index =  stations.index(@endStation)
#                 if @startStation == @endStation  
#                     (start_station_index - end_station_index).abs + " stops" 
#                 end   
#             start_line_park_street_index = @subwayLines[:Orange].index('Park Street')
#             trip_to_park_street = (start_station_index - start_line_park_street_index).abs 

#             end_line_park_street_index = @subwayLines[:Orange].index('Park Street');
#             trip_to_destination = (end_station_index - end_line_park_street_index).abs

#             puts  total_trip = trip_to_park_street + trip_to_destination
#         end
#     end 
# end  
end 

station = Subway.new("Orange", "Forest Hills", "Red", "Porter")   
# station.count_stops 