$subwayLines=[
    
       { 
        name:"Red",
        line:[
        'South Station',
        'Park Street',
        'Kendall',
        'Central',
        'Harvard',
        'Porter',
        'Davis',
        'Alewife']
       },

     {
        name:"Green",
      line:[
        'Government Center',
        'Park Street',
        'Boylston',
        'Arlington',
        'Copley',
        'Hynes',
        'Kenmore']

    },
 
    {
        name:"Orange",
     line:['North Station',
        'Haymarket',
        'Park Street',
        'State',
        'Downtown Crossing',
        'Chinatown',
        'Back Bay',
        'Forest Hills']
}
]



 def stopsBetweenStations(startLine, startStation, endLine, endStation)
    startIndex=0
    endtIndex=0
    sParkIndex=0
    eParkIndex=0
    tripToParkStreet=0
    tripToDestination=0
    totalTrip=0
    numberOfStops=[]
#    s=startLine.to_sym
#    puts s
$subwayLines.each_with_index{|x,i|
#    puts "XXXX"

   x[:line].each_with_index{|y,index|
    #   puts startStation
   
    
      if y== startStation
        #   puts y
         startIndex=index
       end
       if y== endStation
        # puts endStation
         endtIndex=index
      end

    if x[:name]== startLine 
        if y== "Park Street"
            sParkIndex=index
          
        end
    end
    if x[:name]==endLine
        if y== "Park Street"
            eParkIndex=index
            
        end
    end

    
      }
     
      
   }
   if (startLine == endLine)
    puts "#{(endtIndex-startIndex).abs} ssstops"
    
  elsif(startLine != endLine)
    tripToParkStreet = (startIndex - sParkIndex).abs

    tripToDestination = (endtIndex - eParkIndex).abs
    totalTrip = tripToParkStreet + tripToDestination
    puts "#{totalTrip} stops"
    
 end
    
end
    
