data.raw.lab["biolab"].surface_conditions = {
	{
		property = "pressure",
		min = 2000,
		max = 2000,
	},
}
data.raw["assembling-machine"]["kr-bio-lab"].surface_conditions = {
	{
		property = "pressure",
		min = 2000,
		max = 2000,
	},
}

local recycler = data.raw["furnace"]["recycler"]
if recycler then
	if recycler.result_inventory_size < 14 then
		recycler.result_inventory_size = 14
	end
end
