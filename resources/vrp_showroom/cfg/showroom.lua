vehshop = {}

vehshop.opened = false
vehshop.title = "Vehicle Shop"
vehshop.currentmenu = "main"
vehshop.lastmenu = nil
vehshop.currentpos = nil
vehshop.selectedbutton = 0
vehshop.marker = {r = 0, g = 155, b = 255, a = 200, type = 1}

vehshop.menu = {
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
			{name = "Cars"},
		}
	},
	["Cars"] = {
		title = "Cars",
		name = "Cars",
		buttons = {
			{name = "Super"},
			{name = "Sport"},
			{name = "Muscle"},
		}
	},
	["Super"] = {
		title = "Super",
		name = "Super",
		buttons = {
			{name = "Vagner", costs = 1000000, model = "vagner"},
			{name = "XA-21", costs = 900000, model = "xa21"},
			{name = "Tempesta", costs = 800000, model = "tempesta"},
			{name = "Zentorno", costs = 700000, model = "zentorno"},
			{name = "Nero Custom", costs = 600000, model = "nero2"},
		}
	},
	["Sport"] = {
		title = "Sport",
		name = "Sport",
		buttons = {
			{name = "Elegy", costs = 500000, model = "elegy2"},
			{name = "Feltzer", costs = 400000, model = "feltzer2"},
			{name = "Jester (Racecar)", costs = 300000, model = "jester2"},
			{name = "Elegy Retro Custom", costs = 200000, model = "elegy"},
			{name = "Jester", costs = 100000, model = "jester"},
		}
	},
	["Muscle"] = {
		title = "Muscle",
		name = "Muscle",
		buttons = {
			{name = "Pisswasser Dominator", costs = 90000, model = "dominator2"},
			{name = "Sabre Turbo Custom", costs = 80000, model = "sabregt2"},
			{name = "Dominator", costs = 70000, model = "dominator"},
			{name = "Blade", costs = 60000, model = "blade"},
			{name = "Dukes", costs = 50000, model = "dukes"},
		}
	},
}

return vehshop