vehshop = {
	opened = false,
	title = "Vehicle Shop",
	currentmenu = "main",
	lastmenu = nil,
	currentpos = nil,
	selectedbutton = 0,
	marker = { r = 0, g = 155, b = 255, a = 200, type = 1 },
	menu = {
		x = 0.1,
		y = 0.08,
		width = 0.2,
		height = 0.04,
		buttons = 10,
		from = 1,
		to = 10,
		scale = 0.4,
		font = 0,
		["main"] = {
			title = "Showroom",
			name = "main",
			buttons = {
				{name = "Cars", description = ""},
			}
		},
		["Cars"] = {
			title = "Cars",
			name = "Cars",
			buttons = {
				{name = "Sedan", description = ''},
				{name = "Coupe", description = ''},
				{name = "Muscle", description = ''},
			}
		},
		["Sedan"] = {
			title = "Sedan",
			name = "Sedan",
			buttons = {
				{name = "Schafter", costs = 500000, speed = 40, acce = 50, brake = 60, trac = 30, description = {}, model = "schafter2"},
				{name = "Fugitive", costs = 180000, speed = 45, acce = 60, brake = 60, trac = 40, description = {}, model = "fugitive"},
				{name = "Intruder", costs = 700000, speed = 40, acce = 30, brake = 50, trac = 30, description = {}, model = "intruder"},
				{name = "Primo", costs = 500000, speed = 40, acce = 30, brake = 40, trac = 30, description = {}, model = "primo"},
				{name = "Tailgater", costs = 800000, speed = 45, acce = 40, brake = 50, trac = 40, description = {}, model = "tailgater"},
			}
		},
		["Coupe"] = {
			title = "Coupe",
			name = "Coupe",
			buttons = {
			    {name = "Zion", costs = 10000000, speed = 65, acce = 55, brake = 35, trac = 40, description = {}, model = "zion"},
				{name = "Exemplar", costs = 7000000, speed = 70, acce = 70, brake = 50, trac = 50, description = {}, model = "exemplar"},
				{name = "Felon", costs = 500000, speed = 35, acce = 30, brake = 30, trac = 30, description = {}, model = "felon"},
				{name = "Jackal", costs = 7500000, speed = 70, acce = 45, brake = 50, trac = 40, description = {}, model = "jackal"},
				{name = "Cognescenti Cabrio", costs = 90000, speed = 45, acce = 70, brake = 40, trac = 50, description = {}, model = "cogcabrio"},
			}
		},
		["Muscle"] = {
			title = "Muscle",
			name = "Muscle",
			buttons = {
			    {name = "Clique", costs = 9000000, speed = 50, acce = 35, brake = 40, trac = 30, description = {}, model = "clique"},
				{name = "Dominator", costs = 350000, speed = 40, acce = 30, brake = 40, trac = 30, description = {}, model = "dominator"},
				{name = "Vapid Blade", costs = 10000000, speed = 90, acce = 70, brake = 35, trac = 50, description = {}, model = "blade"},
				{name = "Declasse Sabre Turbo", costs = 4100000, speed = 40, acce = 50, brake = 30, trac = 20, description = {}, model = "sabregt"},
				{name = "Impaler", costs = 500000, speed = 20, acce = 30, brake = 40, trac = 20, description = {}, model = "impaler"},
			}
		},
	}
}

return vehshop