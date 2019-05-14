
def  stops_between(startLine, startStation, endLine, endStation)   
    subway = 
    {
        red: ["South Station","Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"],

        green: ["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"],

        orange: ["North Station","Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hills"]
    }
      
     if startLine == endLine 
        count_stops1 = (subway[startLine.to_sym].index(endStation) -  subway[startLine.to_sym].index(startStation)).abs
        p "Stops: #{count_stops1}"
            else 
                count_stops2 = (subway[startLine.to_sym].index("Park Street") -  subway[startLine.to_sym].index(startStation)).abs +
                (subway[endLine.to_sym].index("Park Street") - subway[endLine.to_sym].index(endStation)).abs 
                p "Stops: #{count_stops2}"          
        end 
       p "Line: #{startLine} from #{startStation} to Line: #{endLine} At: #{endStation}}"
end

stops = stops_between("green","Kenmore","orange","North Station")