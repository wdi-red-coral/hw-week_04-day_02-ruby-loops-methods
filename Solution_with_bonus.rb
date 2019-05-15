#This is the the homework solutions -- please evaluate this file
MBTA = {
    red: ['South station' , 'Park Street' , 'Kendall' ,
         'Central' , 'Harvard' , 'Porter' , 'Davis' , 'Alewife'],
    green: ['Government Center' ,'Park Street' , 'Boylston',
         'Arlington' , 'Copley' , 'Hynes' , 'Kenmore'],
    orange: ['North Station' , 'Haymarket' , 'Park Street' , 'State' ,
         'Downtown Crossing' , 'Chinatown' , 'Back Bay' , 'Forest Hills']
    }
    def same_line(line , from_stop , to_stop , stopscount)
        stops = stopscount
        stops = ((MBTA[:"#{line}"].index(from_stop) - MBTA[:"#{line}"].index(to_stop)).abs)+stopscount
        #  puts  "You have traveled (#{stops}) stops"
         if (MBTA[:"#{line}"].index(from_stop) > MBTA[:"#{line}"].index(to_stop))
            i = MBTA[:"#{line}"].index(from_stop)
            while i>=MBTA[:"#{line}"].index(to_stop)
                if (i == MBTA[:"#{line}"].index(to_stop))
                    puts "You arrived at #{to_stop}"
                    puts "Your trip had |#{stops}| stops"
                
                else 
                    puts 'Depart from ('+MBTA[:"#{line}"][i]+') Your next stop ('+MBTA[:"#{line}"][i-1]+')'
                end 
                i-=1
            end
        end
        if (MBTA[:"#{line}"].index(from_stop) < MBTA[:"#{line}"].index(to_stop))
            i = MBTA[:"#{line}"].index(from_stop)
            while i<=MBTA[:"#{line}"].index(to_stop)
                if (i == MBTA[:"#{line}"].index(to_stop))
                    puts "You arrived at #{to_stop}"
                    puts "Your trip had |#{stops}| stops"
                
                else 
                    puts 'Depart from ('+MBTA[:"#{line}"][i]+') Your next stop ('+MBTA[:"#{line}"][i+1]+')'
                end 
                i+=1
            end
        end
end
 
def different_line(from_line , to_line , from_stop , to_stop)
    stops = (MBTA[:"#{from_line}"].index(from_stop) - MBTA[:"#{from_line}"].index('Park Street')).abs+
    (MBTA[:"#{to_line}"].index(to_stop) - MBTA[:"#{to_line}"].index('Park Street')).abs
    # puts  "You have traveled (#{stops}) stops"
    if (MBTA[:"#{from_line}"].index(from_stop) > MBTA[:"#{from_line}"].index('Park Street'))
        i = MBTA[:"#{from_line}"].index(from_stop)
        while i>=MBTA[:"#{from_line}"].index('Park Street')
            if (i != MBTA[:"#{from_line}"].index('Park Street'))
                puts 'Depart from ('+MBTA[:"#{from_line}"][i]+') Your next stop ('+MBTA[:"#{from_line}"][i-1]+')'
            
            else 
                puts "You arrived at (Park Street) You can transfer to the(#{to_line}) to get to #{to_stop}"
                same_line(to_line, 'Park Street' , to_stop ,stops)
                break
            end 
            i-=1
        end
    end
if (MBTA[:"#{from_line}"].index(from_stop) < MBTA[:"#{from_line}"].index('Park Street'))
        i = MBTA[:"#{from_line}"].index(from_stop)
        while i<=MBTA[:"#{from_line}"].index('Park Street')
            if (i != MBTA[:"#{from_line}"].index('Park Street'))
                puts 'Depart from ('+MBTA[:"#{from_line}"][i]+') Your next stop ('+MBTA[:"#{from_line}"][i+1]+')'
            
            else 
                puts "You arrived at (Park Street) You can transfer to the(#{to_line}) to get to #{to_stop}"
                same_line(to_line, 'Park Street' , to_stop)
                break
            end 
            i+=1
        end
    end

end 
def validate_input(from_line , to_line , from_stop , to_stop)
    if ((from_line.to_s == 'orange' || from_line.to_s == 'red' || from_line.to_s == 'green') && from_line.to_s == to_line.to_s)
         same_line(from_line , from_stop , to_stop , 0)
    else 
         different_line(from_line , to_line , from_stop , to_stop)
    end
end
def check_line
     ##This method will be implemented in the next iteration
end

validate_input('red' , 'orange' , 'Central' , 'Chinatown')
