LINES = {
        Red: ["South Station","Park Street", "Kendall", "Central","Harvard","Porter","Davis","Alewife"],
        Green: ["Government","Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"],
        Orange: ["North Station","Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hills"]
}

def stops_between_stations (startLine, startStation, endLine, endStation)
    
    
        if (startLine==endLine) 
            x=(LINES[startLine.to_sym].index(startStation)-LINES[endLine.to_sym].index(endStation)).abs
                     puts "#{x} stops"
                     
            
        else 
            a = (LINES[startLine.to_sym].index(startStation) - LINES[startLine.to_sym].index("Park Street")).abs
            b = (LINES[endLine.to_sym].index(endStation) - LINES[endLine.to_sym].index("Park Street")).abs
            puts "#{a + b} stops"
  
# puts $lines[2][endLine.to_sym]
     end
     end

    
    stops_between_stations('Red', 'Alewife', 'Red', 'Alewife')
    stops_between_stations('Red', 'Alewife', 'Red', 'South Station')
    stops_between_stations('Red', 'South Station', 'Green', 'Kenmore')

