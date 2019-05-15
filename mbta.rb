subwayLines ={ 
    Red: ['South Station', 'Park Street', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife'] , 
    Green: ['Government Center', 'Park Street', 'Boylston', 'Arlington', 'Copley', 'Hynes', 'Kenmore'] ,
    Orange: ['North Station', 'Haymarket', 'Park Street', 'State', 'Downtown Crossing', 'Chinatown', 'Back Bay', 'Forest Hills']
    }  

    #{Red:[],Green:[],Orange:[]}
class Subway

   
    #[{Red:[]},{Grren:[]},{blue:[]}]

        def initialize (startLine, startStation, endLine, endStation) 
            @startLine = startLine
            @startStation = startStation
            @endLine = endLine
            @endStation = endStation

           
        end 
       
     def count_stops
        if @startLine == "Red"  
            self.Red 
        elsif 
            @startLine == "Green"  
            self.Green
        elsif 
            @startLine == "Orange"  
            self.Orange
        end 
end 

def Red 
    subwayLines[:Red].each do |lines| 
        lines[:Red].each do |stations|
            start_station_index = stations.index(@startStation)
            end_station_index =  stations.index(@endStation)
                if @startStation == @endStation  
                    (start_station_index - end_station_index).abs + " stops" 
                end   
            start_line_park_street_index = subwayLines[:Red].index('Park Street')
            trip_to_park_street = (start_station_index - start_line_park_street_index).abs 

            end_line_park_street_index = subwayLines[:Red].index('Park Street');
            trip_to_destination = (end_station_index - end_line_park_street_index).abs

            puts  total_trip = trip_to_park_street + trip_to_destination
        end
    end 
end  

def Green 
    subwayLines[:Green].each do |lines| 
        lines[:Green].each do |stations|
            start_station_index =  stations.index(@startStation)
            end_station_index =  stations.index(@endStation)
                if @startStation == @endStation  
                    (start_station_index - end_station_index).abs + " stops" 
                end   
            start_line_park_street_index = subwayLines[:Green].index('Park Street')
            trip_to_park_street = (start_station_index - start_line_park_street_index).abs 

            end_line_park_street_index = subwayLines[:Green].index('Park Street');
            trip_to_destination = (end_station_index - end_line_park_street_index).abs

            puts  total_trip = trip_to_park_street + trip_to_destination
        end
    end 
end  


def Orange 
    subwayLines[:Orange].each do |lines| 
        lines[:Orange].each do |stations|
            start_station_index = stations.index(@startStation)
            end_station_index =  stations.index(@endStation)
                if @startStation == @endStation  
                    (start_station_index - end_station_index).abs + " stops" 
                end   
            start_line_park_street_index = subwayLines[:Orange].index('Park Street')
            trip_to_park_street = (start_station_index - start_line_park_street_index).abs 

            end_line_park_street_index = subwayLines[:Orange].index('Park Street');
            trip_to_destination = (end_station_index - end_line_park_street_index).abs

            puts  total_trip = trip_to_park_street + trip_to_destination
        end
    end 
end  
end 

station = Subway.new("Red", "South Station", "Red", "South Station") 
station.count_stops