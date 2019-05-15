

  subway_lines = {
   red_line: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
   green_line: ["Green Haymarket", "Government Center", "Park Street", "Boylston", "Arlington", "Copley"],
   orange_line: ["North Station", "Orange Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
 }

 
  
 def same_line(start_line, start_station, stop_line, stop_station, array)
 	dis1 = array[start_line.to_sym].index(start_station).to_i
 	dis2 = array[stop_line.to_sym].index(stop_station).to_i
 	return (dis1 - dis1).abs
 end

 def diff_line(start_line, start_station, stop_line, stop_station, array)
 	start = array[start_line.to_sym].index(start_station).to_i
 	stop = array[stop_line.to_sym].index(stop_station).to_i
 	start_park_point = array[start_line.to_sym].index("Park Street").to_i
 	stop_park_point = array[stop_line.to_sym].index("Park Street").to_i
 	dis_to_park_start = (start - start_park_point).to_i.abs
 	dis_to_park_stop = (stop - stop_park_point).to_i.abs
 	return (dis_to_park_start + dis_to_park_stop).abs
 end

 if start_line == stop_line
    	puts same_line_distance(start_line, start_station, stop_line, stop_station, lines)
    else puts diff_line_distance(start_line, start_station, stop_line, stop_station, lines)
    end



    puts "Please enter your starting line"
 	start_line = gets.chomp
 puts "Please enter your starting station"
 	start_station = gets.chomp
 puts "Please enter your stop line"
 	stop_line = gets.chomp
 puts "Please enter your stop station"
 	stop_station = gets.chomp
