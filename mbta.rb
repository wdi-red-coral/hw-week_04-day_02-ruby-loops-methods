# current code of mbta in ruby
# I used global variabale to make the hash of subway_line easier to access
# in reverse and use of global variable
$subway_lines = 
{
    red:['South Station','Park Street','Kendall','Central','Harvard','Porter','Davis','Alewife'],
    green:['Government Cente', 'Park Street', 'Boylston', 'Arlington', 'Copley', 'Hynes', 'Kenmore'],
    orange:['North Station', 'Haymarket', 'Park Street', 'State', 'Downtown Crossing', 'Chinatown', 'Back Bay', 'Forest Hills']
}
# function originally calculated the stops now it will just store values and call function path_to_array
def stops_between_stations(startline,startstation, endline, endstation)
   firstline=$subway_lines[startline.to_sym]
   lastline=$subway_lines[endline.to_sym]
   startlinekey=startline
   endlinekey=endline
   start_index = firstline.index(startstation)
   end_index = lastline.index(endstation)
   linecheck=startline==endline
   difference = end_index - start_index
   if(difference <= 0 && linecheck)
        if(difference==0)
            puts "you are on the same station #{difference}"
        elsif (difference<0)
            puts "you are in reverse. Take a cap! #{difference}"
        end
    else
        path_to_array(firstline,start_index,lastline,end_index,linecheck,startline,endline)
    end
end

# this function creates an array of all the stops of the path then calls a display function usig the steps array
# function takes 7 arguments 
# start and endline that will access the arrays of the hash
# start and end indcies of the stations in their respective arrays
# linecheck is a boolean that will tell the method if the stations are in (cont.)
# (cont.) the same line or not so it won't check
# startlinename and endlinename are the string values of the key names passed only to #
#be used for display in the display

def path_to_array(startline,startindex,endline,endindex,linecheck,startlinename,endlinename)
   
    #initial values
    path=[]
    index=startindex
    #this will execute if the stations are on different lines
    #it will fill the array with the stations taken through the path 
    if(!linecheck)  
        until startline[index]=='Park Street'
        path.push(startline[index])
        index=index+1;
        end
        index=endline.index('Park Street')
        loop do
        path.push(endline[index])
        index=index+1;
        break if index==endindex+1
        end
    #this will execute in the case of one line
    else 
        loop do
        path.push(startline[index])
        index=index+1;
        break if index==endindex+1
        end 
    end
    #calling the display method which will only need the array and strings of the line names (cont.)
    # (cont.) and the linecheck 
    display_path(path,startlinename,endlinename,linecheck) 
    # this will empty the array again 
    path=[]
end

def display_path(path,startline,endline,check)
    #this line will be displayed regardless of lines as it it the starting line
    puts "\n\nYou must travel through the following stops on the #{startline.capitalize}  line:"
    if(!check)
    #this will be executing the display for the different lines
    #I defined variables j,l,k so I can split the array of steps to two arrays (cont.)
    #(cont.) based on parks street index using ranges
        j=path.index('Park Street')
        l=j+1
        k=path.length-1
        firstlinepath=path[0..j]
        secondlinepath=path[l..k]
        #I used each to loop through each array and dispaly the proper message per position
        firstlinepath.each_index{|x| 
        if x==firstlinepath.length-1
            print " and "+firstlinepath[x]+"." 
            print "\nChange at Park Street."
        else
            print firstlinepath[x]+","
        end 
        }
        puts "\nYour trip continues through the following stops on #{endline.capitalize}  Line:" 
        secondlinepath.each_index{|x| 
        if x==secondlinepath.length-1
            print " and "+secondlinepath[x]+"." 
        else
            print secondlinepath[x]+","
        end
        }
        puts "\n#{path.length-1} stops in total"
        print "\n"
    #this will execute in case the stations were in the same line
    else
        path.each_index{|x| 
        if x==path.length-1
            print " and "+path[x]+"."
        else
            print path[x]+","
        end 
        }
        puts "\n#{path.length-1} stops in total"
        print "\n"
    end

end

stops_between_stations('orange', 'North Station','red', 'Alewife')
stops_between_stations('red', 'Kendall', 'red', 'Alewife')
stops_between_stations('red', 'Alewife', 'red', 'Alewife')
stops_between_stations('red', 'Alewife', 'red', 'South Station')
stops_between_stations('red', 'South Station','red', 'Alewife')
stops_between_stations('red', 'South Station', 'green', 'Kenmore') 
stops_between_stations('orange', 'North Station', 'green', 'Kenmore')