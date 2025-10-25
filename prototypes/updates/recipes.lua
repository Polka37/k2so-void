local data_util = require("__Krastorio2-spaced-out__.data-util")

data.raw.recipe["kr-carbide-processing-circuit"].hidden_factoriopedia = true
data.raw.recipe["kr-carbide-processing-circuit"].hidden = true

for _, recipe in pairs(data.raw.recipe) do
	for _, ingredients in pairs(recipe.ingredients or {}) do
		if ingredients.name == "biter-egg" then
			data_util.convert_ingredient(recipe.name, "biter-egg", "pentapod-egg")
		end
	end
	for _, results in pairs(recipe.results or {}) do
		if results.name == "biter-egg" then
			data_util.add_or_replace_product(
				recipe.name,
				"biter-egg",
				{ type = "item", name = "pentapod-egg", amount = results.amount }
			)
		end
	end
end

data_util.remove_ingredient("fusion-power-cell", "kr-tritium")
data_util.remove_ingredient("biolab", "uranium-235")

data_util.add_or_replace_ingredient(
	"production-science-pack",
	"uranium-238",
	{ type = "item", name = "electric-furnace", amount = 1 }
)
data_util.add_or_replace_ingredient(
	"spidertron",
	"kr-portable-fusion-reactor-equipmnet",
	{ type = "item", name = "fission-reactor-equipment", amount = 1 }
)

data_util.add_or_replace_product("scrap-recycling", "kr-imersite-crystal", {
	type = "item",
	name = "kr-imersite-crystal",
	amount = 1,
	probability = 0.01,
	show_details_in_recipe_tooltip = false,
})

data.raw.recipe["kr-matter-to-kr-imersite-powder"].surface_conditions = {
	{
		property = "magnetic-field",
		min = 99,
		max = 99,
	},
}
