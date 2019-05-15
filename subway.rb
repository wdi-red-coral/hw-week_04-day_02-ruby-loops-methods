$sub_station = {
    Red: ["South Station",
      "Park Street",
      "Kendall",
      "Central",
      "Harvard",
      "Porter",
      "Davis",
      "Alewife"
    ],
    Green: [
        "Government Center",
        "Park Street",
        "Boylston",
        "Arlington",
        "Copley",
        "Hynes",
        "Kenmore"
    ],
    Orange: [
      "North Station",
        "Haymarket",
        "Park Street",
        "State",
        "Downtown Crossing",
        "Chinatown",
        "Back Bay",
        "Forest Hills"
    ]
}
def stops_between_stations (startColor,startStation,endColor,endStation)
    @startColor = startColor
    @startStation = startStation
    @endColor = endColor
    @endStation = endStation
    if @startColor == @endColor
        p same_line(@startColor,@startStation,@endStation)
    else 
        p same_line(@startColor,@startStation,'Park Street') + same_line(@endColor,'Park Street',@endStation)
    end
end
def same_line(startColor,startStation,endStation)
    aPoint = 0
    bPoint = 0
    stops = 0
    $sub_station.each do |key,value|
        if ":#{key}" == ":#{startColor}"
            value.each do |sStation|
                if sStation == startStation
                    aPoint = value.index(sStation)
                end
            end
            value.each do |eStation|
                if eStation == endStation
                    bPoint = value.index(eStation)
                end
            end
        end
    end
    stops = aPoint - bPoint
    return stops.abs
end

stops_between_stations('Green','Kenmore','Red','Central')