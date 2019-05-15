#redline =[ "South Station" ,"Park Street" ,"Kendall","Central","Harvard","Porter","Davis","Alewife" ]
RED = [ "South Station" ,"Park Street" ,"Kendall","Central","Harvard","Porter","Davis","Alewife" ] # 
GREEN = ["government center", "park street", "boylston", "arlington", "copley", "hynes", "kenmore"]
ORANGE = ["north station", "park steert", "haymarket", "park street", "state", "downtown crossing", "chinatown",  "back bay", "forest hills"]
 #for test 
 /
 p   REDLINE.index("South Station")
 p   REDLINE.index("Park Street")
 p   REDLINE.index("Kendall")
 p   REDLINE.index ("Central")
 p   REDLINE.index ("Harvard")
 p   REDLINE.index("Porter")
 p   REDLINE.index("Davis")
/
 
 # p  REDLINE.index("South Station") - REDLINE.index("Davis")

   def stops_between_stations(sl, ss, el, es)
    if (sl == "Red"  and el=="Red")
        p (RED.index(ss) - RED.index(es)).abs
    elsif (sl == "Green" and el == "Green")
        p (GREEN.index(ss) - GREEN.index(es)).abs
    elsif (sl == "Orange" and el == "Orange")
        p (ORANGE.index(ss) - ORANGE.index(es)).abs
    elsif ((sl == "Red" and el == "Green") or (sl == "Green" and el == "Red"))
        p (RED.index(ss) - GREEN.index(es)).abs
    end
   end 
    
  


   stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') 
    stops_between_stations('Red', 'Alewife', 'Red', 'South Station')
   stops_between_stations('Red', 'South Station', 'Green', 'kenmore')
   


    



  