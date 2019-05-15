




def Stops(startline , startstation , endline, endstation)
    subway = {
            Red:   ['South Station' ,'Park Street' ,'Kendall' ,'Central' ,'Harvard' ,'Porter' ,'Davis' ,'Alewife' ] , 

            Green: ['Government Center', 'Park Street','Boylston','Arlington','Copley','Hynes','Kenmore'], 

            Orange:['North Station', 'Haymarket','Park Street','State','Downtown Crossing','Chinatown' , 'Back Bay' , 'Forest Hills']
            }

    
    if startline == endline
        (subway[startline.to_sym].index(startstation) - subway[endline.to_sym].index(endstation)).abs
    else
        (subway[startline.to_sym].index(startstation) - subway[startline.to_sym].index("Park Street")).abs + (subway[endline.to_sym].index("Park Street") - subway[endline.to_sym].index(endstation)).abs
    end

end

puts Stops('Red', 'South Station', 'Green', 'Kenmore')







# def Stops(startline , startstation , endline, endstation)
#     subway = {
#             Red:   ['South Station' ,'Park Street' ,'Kendall' ,'Central' ,'Harvard' ,'Porter' ,'Davis' ,'Alewife' ] , 

#             Green: ['Government Center', 'Park Street','Boylston','Arlington','Copley','Hynes','Kenmore'], 

#             Orange:['North Station', 'Haymarket','Park Street','State','Downtown Crossing','Chinatown' , 'Back Bay' , 'Forest Hills']
#             }

#     if startline == endline
#         subway[startline.to_sym].index(startstation) - subway[startline.to_sym].index(ends)
#     end

#     if startline === endline
#         subway.each do |key , value|
#             if key == startline.to_sym
#                 start_point= value.index(startstation)
#                 end_point =  value.index(endstation)
#                 points = (start_point - end_point).abs
#                 puts "number of station is #{points}"
#             end 
#         end
#     else
#          line_one = (subway[startline.to_sym].index(startstation) - subway[startline.to_sym].index("Park Street")).abs
#          line_two = (subway[endline.to_sym].index("Park Street") - subway[endline.to_sym].index(endstation)).abs
#          lines_points = line_one +  line_two
#          puts 
#     end

# end

# Stops('Green', 'Park Street' , 'Green', 'Park Street')




