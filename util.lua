local data_util = require("__Krastorio2-spaced-out__.data-util")

local util = {}

local types = {
	"technology",
	"recipe",
	"item",
	"assembling-machine",
	"unit",
	"item-with-entity-data",
	"capsule",
	"fish",
	"turret",
	"locomotive",
	"unit-spawner",
	"corpse",
	"ammo",
	"reactor",
	"resource",
}
--- @param prototype Name
function util.hide(prototype)
	for _, type in pairs(types) do
		local prototype = data.raw[type][prototype]
		if prototype then
			prototype.hidden = true
			prototype.hidden_in_factoriopedia = true
		end
	end
end

return util
