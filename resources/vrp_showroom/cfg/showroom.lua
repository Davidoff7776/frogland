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
			{name = "Sedan"},
			{name = "Coupe"},
			{name = "Muscle"},
		}
	},
	["Sedan"] = {
		title = "Sedan",
		name = "Sedan",
		buttons = {
			{name = "Schafter", costs = 500000, model = "schafter2"},
			{name = "Fugitive", costs = 180000, model = "fugitive"},
			{name = "Intruder", costs = 700000, model = "intruder"},
			{name = "Primo", costs = 500000, model = "primo"},
			{name = "Tailgater", costs = 800000, model = "tailgater"},
		}
	},
	["Coupe"] = {
		title = "Coupe",
		name = "Coupe",
		buttons = {
			{name = "Zion", costs = 10000000, model = "zion"},
			{name = "Exemplar", costs = 7000000, model = "exemplar"},
			{name = "Felon", costs = 500000, model = "felon"},
			{name = "Jackal", costs = 7500000, model = "jackal"},
			{name = "Cognescenti Cabrio", costs = 90000, model = "cogcabrio"},
		}
	},
	["Muscle"] = {
		title = "Muscle",
		name = "Muscle",
		buttons = {
			{name = "Clique", costs = 9000000, model = "clique"},
			{name = "Dominator", costs = 350000, model = "dominator"},
			{name = "Vapid Blade", costs = 10000000, model = "blade"},
			{name = "Declasse Sabre Turbo", costs = 4100000, model = "sabregt"},
			{name = "Impaler", costs = 500000, model = "impaler"},
		}
	},
}

return vehshop