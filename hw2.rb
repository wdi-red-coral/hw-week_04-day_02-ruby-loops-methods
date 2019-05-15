REDLINE = ["south station", "park street", "kendall", "central", "harvard", "porter", "davis", "alewife"] 
GREENLINE = ["government center", "park street", "boylston", "arlington", "copley", "hynes", "kenmore"]
ORANGELINE = ["north station", "haymarket", "park street", "state", "downtown crossing", "chinatown",  "back bay", "forest hills"]


def stops_between_stations(startLine, startStation, endLine, endStation)
    if (startLine == "Red" and endLine == "Red")
        p (REDLINE.index(startStation.downcase) - REDLINE.index(endStation.downcase)).abs
    elsif (startLine == "Green" and endLine == "Green")
        p (GREENLINE.index(startStation.downcase) - GREENLINE.index(endStation.downcase)).abs
        elsif (startLine == "Orange" and endLine == "Orange")
            p (ORANGELINE.index(startStation.downcase) - ORANGELINE.index(endStation.downcase)).abs
        elsif ((startLine == "Red" and endLine == "Green") or (startLine == "Green" and endLine == "Red"))
            p (REDLINE.index(startStation.downcase) - GREENLINE.index(endStation.downcase)).abs
        elsif((startLine == "Red" and endLine == "Orange") or (startLine == "Orange" and endLine == "Red"))
            p (REDLINE.index(startStation.downcase) - ORANGELINE.index(endStation.downcase)).abs

        end
    end

    stops_between_stations('Red', 'alewife', 'Red', 'alewife')
    stops_between_stations('Red', 'alewife', 'Red', 'south station')
    stops_between_stations('Red', 'south station', 'Green', 'kenmore')
    stops_between_stations('Red', 'kendall', 'Orange', 'chinatown')
  


    