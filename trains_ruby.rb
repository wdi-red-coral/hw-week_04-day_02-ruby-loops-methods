class mbtarb
attr_accessor= @name
attr_accessor= @pasword



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


# p   RedLINE.index("Porter")
# p   RedLINE.index("Davis")


moudle 
def stops_between_stations(strtLoc, ss, endLoc, es)
if (strtLoc == "Red"  and endLoc=="Red")
    p (Red.index(ss) - Red.index(es)).abs
endLocs if (strtLoc == "Green" and endLoc == "Green")
    p (Green.index(ss) - Green.index(es)).abs
endLocs if (strtLoc == "Orange" and endLoc == "Orange")
    p (Orange.index(ss) - Orange.index(es)).abs
endLocs if ((strtLoc == "Red" and endLoc == "Green") or (strtLoc == "Green" and endLoc == "Red"))
    p (Red.index(ss) - Green.index(es)).abs
end
end


# p  RedLINE.index("South Station") - RedLINE.index("back bay")
