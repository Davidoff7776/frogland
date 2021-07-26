
local cfg = {}
-- define garage types with their associated vehicles
-- (vehicle list: https://wiki.fivem.net/wiki/Vehicles)

-- each garage type is an associated list of veh_name/veh_definition 
-- they need a _config property to define the blip and the vehicle type for the garage (each vtype allow one vehicle to be spawned at a time, the default vtype is "default")
-- this is used to let the player spawn a boat AND a car at the same time for example, and only despawn it in the correct garage
-- _config: vtype, blipid, blipcolor, permissions (optional, only users with the permission will have access to the shop)

cfg.rent_factor = 0.1 -- 10% of the original price if a rent
cfg.sell_factor = 0.75 -- sell for 75% of the original price
--this is the limit amount that you can put when you are trying to sell your personall vehicle to another player
cfg.limit = 100000000


cfg.garage_types = {
  ["Fisher's Boat"] = {
    _config = {vtype="Boat",blipid=427,blipcolor=28,permissions={"fisher.vehicle"}},
    ["suntrap"] = {"Fisher's boat",0, "Your favorite boat!"}
  },
  
  ["Main Vehicles"]  = {  -- 150k price cap
    _config = {vtype="Car",blipid=50,blipcolor=4},
    ["vagner"] = {"Vagner",1000000, ""},
    ["xa21"] = {"XA-21",900000, ""},
    ["tempesta"] = {"Tempesta", 800000, ""},
    ["zentorno"] = {"Zentorno", 700000, ""},
    ["nero2"] = {"Nero Custom", 600000, ""},
    ["elegy2"] = {"Elegy", 500000, ""},
    ["feltzer2"] = {"Feltzer", 400000, ""},
    ["jester2"] = {"Jester (Racecar)", 300000, ""},
    ["elegy"] = {"Elegy Retro Custom", 200000, ""},
    ["jester"] = {"Jester", 100000, ""},
    ["dominator2"] = {"Pisswasser Dominator", 90000, ""},
    ["sabregt2"] = {"Sabre Turbo Custom", 80000, ""},
    ["dominator"] = {"Dominator", 70000, ""},
    ["blade"] = {"Blade", 60000, ""},
    ["dukes"] = {"Dukes", 50000, ""}
  },
  ["Police Vehicles"] = {
    _config = {vtype="Car",blipid=56,blipcolor=38,permissions={"police.vehicle"}},
    ["police"] = {"Police Cruiser",0, "police"},
    ["police2"] = {"Dodge Sheriff",0, "police"},
    ["police3"] = {"Police3",0, "police"},
    ["police4"] = {"police4",0, "police"},
    ["police5"] = {"Police SUV",0, "police"},
    ["police6"] = {"Police K9",0, "police"},
    ["police7"] = {"Police7",0, "police"},
	  ["police8"] = {"Police8",0, "police"},
    ["policet"] = {"policet",0, "police"},
    ["sheriff3"] = {"Sheriff",0, "police"},
    ["sheriff2"] = {"Sheriff SUV",0, "police"},
    ["sheriff"] = {"2015 Sheriff",0, "police"},
    ["riot"] = {"SWAT",0, "police"},
    ["fbi"] = {"Unmarked",0, "police"},
    ["hwaycar2"] = {"State Trooper",0, "police"},
    ["hwaycar3"] = {"Trooper SUV",0, "police"},
    ["hwaycar5"] = {"hwaycar5",0, "police"},
    ["hwaycar6"] = {"hwaycar6",0, "police"},
    ["hwaycar7"] = {"hwaycar7",0, "police"},
    ["hwaycar8"] = {"hwaycar8",0, "police"},
    ["hwaycar9"] = {"hwaycar9",0, "police"},
    ["hwaycar10"] = {"hwaycar10",0, "police"},
    ["hwaycar"] = {"hwaycar",0, "police"},
    ["polf430"] = {"Police Ferarri",0, "police"},
    ["policeb"] = {"policeb",0, "police"}
  },
  ["Police Cadet"] = {
    _config = {vtype="Car",blipid=56,blipcolor=38,permissions={"Cadet.vehicle"}},
    ["police7"] = {"police",0, "police"}
  },
  ["FBI"] = {
    _config = {vtype="Car",blipid=56,blipcolor=38,permissions={"Bounty.vehicle"}},
    ["fbi"] = {"Unmarked",0, "police"}
  },
  ["Ambulance Service"] = {
    _config = {vtype="Car",blipid=50,blipcolor=3,permissions={"emergency.vehicle"}},
    ["Ambulance"] = {"Ambulance",0, "emergency"},
    ["hwaycar4"] = {"Tahoe",0, "emergency"},
    ["firetruk"] = {"firetruk",0, "emergency"}
  },
  ["Police Helicopters"] = {
    _config = {vtype="Heli",blipid=43,blipcolor=38,radius=5.1,permissions={"police.vehicle"}},
    ["polmav"] = {"Maverick",0, "emergency"}
  },
  ["EMS Helicopter"] = {
    _config = {vtype="Heli",blipid=43,blipcolor=1,radius=5.1,permissions={"emergency.vehicle"}},
    ["supervolito2"] = {"EMS",0, "emergency"}
  },
  ["Mafia Garage"] = {
    _config = {vtype="Car",blipid=50,blipcolor=3,permissions={"mafia.vehicle"}},
	["infernus"] = {"Infernus", 0, ""}, -- THIS IS JUST AN EXAMPLE , ADD MORE IF YOU WANT.
  },
  ["Pilot Las Santos"] = {
    _config = {vtype="Plane",blipid=16,blipcolor=30,permissions={"pilot.vehicle"}},
    ["jet"] = {"Boeing 747",0, "jet"}
  },
  ["Pilot San Andreas"] = {
    _config = {vtype="Plane",blipid=16,blipcolor=30,permissions={"player.phone"}},
     ["mammatus"] = {"Small Cargo",0, "mammatus"}
  },
  ["Air P"] = {
    _config = {vtype="Heli",blipid=16,blipcolor=30,permissions={"player.phone"}},
    ["vestra"] = {"Plane",0, "vestra"}
  },
  ["Air H"] = {
    _config = {vtype="Heli",blipid=43,blipcolor=30,permissions={"air.vehicle"}},
     ["volatus"] = {"Helicopter",0, "volatus"}
  }, 
  ["Uber"] = {
    _config = {vtype="Car",blipid=50,blipcolor=81,permissions={"uber.vehicle"}},
    ["surge"] = {"Surge",0, "surge"}
  },
  ["UPS"] = {
    _config = {vtype="Car",blipid=85,blipcolor=81,permissions={"ups.vehicle"}},
    ["boxville4"] = {"Delivery",0, "boxville4"}
  },
  ["Lawyer"] = {
    _config = {vtype="Car",blipid=50,blipcolor=7,permissions={"Lawyer.vehicle"}},
    ["panto"] = {"Panto", 0, "panto"}
  },
  ["Delivery Driver"] = {
    _config = {vtype="Car",blipid=85,blipcolor=31,permissions={"delivery.vehicle"}},
    ["faggio3"] = {"faggio3",0, "faggio3"}
  },  
  ["Mechanic"] = {
    _config = {vtype="Car",blipid=50,blipcolor=31,permissions={"repair.vehicle"}},
    ["towtruck2"] = {"towtruck2",0, "towtruck2"},
	["utillitruck3"] = {"Utility Truck",0, "utillitruck3"}
  },
  ["Bank Driver"] = {
    _config = {vtype="Car",blipid=67,blipcolor=4,permissions={"bankdriver.vehicle"}},
    ["stockade"] = {"stockade",0, "stockade"}
  },
  ["Trash Collector"] = {
    _config = {vtype="Car",blipid=67,blipcolor=4,permissions={"trash.vehicle"}},
    ["trash"] = {"Truck",0, "trash"}
  },
  ["Medical Driver"] = {
    _config = {vtype="Car",blipid=67,blipcolor=4,permissions={"medical.vehicle"}},
    ["pony2"] = {"Medical Weed Van",0, "pony2"}
  }

  --[[
    ["category name"] = {
      _config = {vtype="Car",blipid=67,blipcolor=4,permissions={"medical.vehicle"}},
      ["spawncode"] = {"vehiclename",0, "pony2"}
    }
  
    That example above is how you create your own categories. It's that easy :D
  ]]
  
  
}


--needed: delivery, 
-- {garage_vehicle_type,x,y,z}
cfg.garages = {
  {"Car",141.66270446777,-1081.8083496094,29.192489624023},
  {"Car",1208.6527099609,-1262.5780029297,35.226768493652},
  {"Car",1777.6678466797,3335.7856445313,41.171855926514},
  {"Car",-361.62393188477,-132.71321105957,38.680068969727},
  {"Car",717.70239257813,-1088.8958740234,22.360628128052},
  {"Car",-13.856479644776,-1098.8659667968,26.673681259156}, -- showroom
  {"Car",1181.6231689453,2650.830078125,37.821151733398},
  {"Car",112.275, 6619.83, 31.8154},
  {"Car",-205.789, -1308.02, 31.2916},
  {"Car",451.2121887207,-1018.2822875977,28.495378494263, "police.vehicle"},	-- jobs garage
  {"Car",477.99038696289,-1020.9154663086,28.011201858521, "police.vehicle"},
  {"Car",512.07818603516,-3052.1579589844,6.0687308311462},  
  {"Car",1868.5435791016,3696.0295410156,33.5693359375, "police.vehicle"},  -- sandy shores
  {"Car",-476.92425537109,6026.9951171875,31.340547561646, "police.vehicle"},  -- paleto
  {"Car",358.91650390625, -607.78515625, 28.6820983886719, "emergency.vehicle"}, -- main
  {"Car",1833.3223876953,3661.3088378906,33.875843048096, "emergency.vehicle"}, -- sandy shores
  {"Car",-255.98040771484,6346.1127929688,32.426189422607, "emergency.vehicle"}, -- paleto
  {"Car",907.38049316406,-175.86546325684,74.130157470703, "uber.vehicle"}, -- jobs garage
  {"Car",-1900.7344970703,-560.89245605469,11.802397727966, "Lawyer.vehicle"},-- jobs garage
  {"Car",964.514770507813,-1020.13879394531,40.8475074768066},   -- jobs garage
  {"Car",401.42602539063,-1631.7053222656,29.291942596436, "repair.vehicle"},   -- jobs garage
  {"Car",222.68756103516,222.95631408691,105.41331481934, "bankdriver.vehicle"},   -- jobs garage
  {"Car",-638.08142089844,56.500617980957,43.794803619385},  -- Car
  {"Car",-1457.4909667969,-500.61614990234,32.202766418457},
  {"Car",-25.273494720459,-1434.4365234375,30.653142929077},
  {"Car",-1155.2669677734,-1520.244140625,4.3475861549377},
  {"Car",-872.43200683594,-370.17984008789,38.360645294189},
  {"Car",-354.92651367188,6222.3588867188,31.488939285278},
  {"Car",-819.40551757813,183.72904968262,72.136161804199},
  {"Car",15.016004562378,547.76171875,176.14279174805},
  {"Car",69.852645874023,117.0472946167,79.126907348633, "ups.vehicle"},
  {"Car",1977.1169433594,3827.2368164063,32.373237609863},
  {"Car",2480.5893554688,4953.958984375,45.026481628418},
  {"Car",15.016004562378,547.76171875,176.14279174805},
  {"Car",-1415.1351318359,-956.41815185547,7.2369647026062},
  {"Car",497.44073486328,-1702.4410400391,29.400140762329},
  {"Car",684.44097900391,-719.58734130859,25.884830474854},
  {"Car",1230.9146728516,-2678.0639648438,2.7148849964142},
  {"Car",-796.00256347656,304.55578613281,85.700416564941},
  {"Car",-259.08013916016,-680.39465332031,32.830478668213},
  {"Car",-72.769035339355,495.79925537109,144.10296630859},
  {"Car",-121.71002960205,509.85540771484,142.5652923584},
  {"Car",-188.32077026367,502.87573242188,134.23774719238},
  {"Car",131.78851318359,568.10815429688,183.4107208252},
  {"Car",1366.5837402344,1147.4722900391,113.41327667236},
  {"Car",-36.333103179932,-674.09722900391,32.33805847168},
  {"Car",1409.9451904297,3620.3876953125,34.894344329834},
  {"Car",1274.7135009766,-1732.7083740234,52.04536819458},
  {"Car",34.516819000244,6604.0004882813,32.449085235596},
  {"Car",-555.20428466797,664.56500244141,145.16401672363},
  {"Heli",449.30340576172,-981.24963378906,43.69165802002, "police.vehicle"}, -- Main PD
  {"Heli",1770.2171630859,3239.5561523438,42.13171005249}, -- Sandy Shores
  {"Heli",-475.24264526367,5988.7353515625,31.336685180664, "police.vehicle"}, -- Paleto Bay
  {"Heli",449.30340576172,-981.24963378906,43.69165802002, "police.vehicle"}, -- Main PD
  {"Heli",1770.2171630859,3239.5561523438,42.13171005249}, -- Sandy Shores
  {"Heli",-475.24264526367,5988.7353515625,31.336685180664, "police.vehicle"}, -- Paleto Bay  
  {"Boat",1508.8854980469,3908.5732421875,30.031631469727, "fisher.vehicle"},
  {"Car",-319.82263183594,-942.8408203125,31.080617904663},
  {"Plane",-901.70129394531,-3293.984375,13.944430351257},
  {"Plane",2128.9069824219,4806.134765625,41.168750762939},
  {"Plane",1734.9053955078,3297.9689941406,41.223503112793},
  {"Heli",2128.9069824219,4806.134765625,41.168750762939},
  {"Heli",-745.14343261719,-1468.5361328125,5.0005240440369},
  {"Heli",1734.9053955078,3297.9689941406,41.223503112793},
  {"Car",768.86297607422,-1410.4896240234,26.502605438232, "trash.vehicle"}
}

return cfg
