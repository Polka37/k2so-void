data.raw["space-connection"]["nauvis-vulcanus"] = nil
data.raw["space-connection"]["nauvis-gleba"] = nil
data.raw["space-connection"]["nauvis-fulgora"] = nil
data.raw["planet"]["nauvis"].map_gen_settings = nil
data.raw["planet"]["nauvis"].hidden = true

local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

data:extend({
	{
		type = "space-connection",
		name = "vulcanus-fulgora",
		subgroup = "planet-connections",
		icons = {
			{ icon = "__space-age__/graphics/icons/planet-route.png" },
			{
				icon = "__space-age__/graphics/icons/vulcanus.png",
				icon_size = 64,
				scale = 0.333,
				shift = { -6, -6 },
			},
			{
				icon = "__space-age__/graphics/icons/fulgora.png",
				icon_size = 64,
				scale = 0.333,
				shift = { 6, 6 },
			},
		},
		from = "vulcanus",
		to = "fulgora",
		order = "de",
		length = 15000,
		asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.vulcanus_gleba),
	},
})
