data:extend({
	{
		type = "recipe",
		name = "kr-water-mineralization",
		category = "organic",
		enabled = false,
		energy_required = 5,
		ingredients = {
			{ type = "fluid", name = "water", amount = 100 },
			{ type = "item", name = "stone", amount = 1 },
		},
		results = {
			{ type = "fluid", name = "kr-mineral-water", amount = 100 },
		},
	},
})
