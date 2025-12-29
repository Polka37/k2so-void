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
--- @param Prototype name
function util.hide(Prototype)
	for _, type in pairs(types) do
		if data.raw[type][Prototype] then
			data.raw[type][Prototype].hidden = true
			data.raw[type][Prototype].hidden_in_factoriopedia = true
		end
	end
end

return util
