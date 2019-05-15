Red = [ "South Station",
"Park Street",
"Kendall",
"Central",
"Harvard",
"Porter",
"Davis",
"Alewife"
] 

Green = ["government center",
"park street",
"boylston", 
"arlington",
"copley",
"hynes", 
"kenmore"
]

Orange = ["north station",
"park steert",
"haymarket",
"park street", 
"state",
"downtown crossing", 
"chinatown",
"back bay",
"forest hills"
]



def stops_between_stations(strtLoc, ss, endLoc, es)
    p (endLoc.index(ss) - strtLoc.index(es)).abs
end

p  (Red.index("South Station") - Red.index("Alewife")).abs








# p   Red.index("Porter")
# p   Red.index("Davis")



# def stops_between_stations(strtLoc, ss, endLoc, es)
#     # if (strtLoc == endLoc)
#         p (endLoc.index(ss) - strtLoc.index(es)).abs

#     # else
#     #            p (endLoc.index(ss) - strtLoc.index(es)).abs
    
#     # end
# end


#  p  (Red.index("South Station") - Red.index("Alewife")).abs
