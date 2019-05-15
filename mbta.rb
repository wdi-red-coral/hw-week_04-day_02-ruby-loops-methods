RED = ["South Station","Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"]
GREEN = ['Government Center', 'Park Street','Boylston','Arlington','Copley','Hynes','Kenmore']
ORANGE =['North Station','Haymarket', 'Park Street','State','Downtown Crossing','Chinatown','Black Bay','Forest Hills']


def stops_between_stations(startLine, startStation, endLine, endStation)
    intersection = "Park Street"
    if (startLine == "Red" and  endLine == "Red")
        puts (RED.index(startStation) - RED.index(endStation)).abs
    elsif (startLine == "Green" and endLine =="Green")
        puts (GREEN.index(startStation)-GREEN.index(endStation)).abs
    elsif (startLine == "Orange" and endLine== "Orange")
        puts (ORANGE.index(startStation)-ORANGE.index(endStation)).abs
    elsif (startLine == "Red" and endLine == "Green") or  (startLine == "Green" and endLine == "Red")
        a = (RED.index(startStation) - RED.index(intersection)).abs 
        b = (GREEN.index(endStation) - GREEN.index(intersection)).abs
        puts a + b
     
    end
end

#stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
#stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
#stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6




