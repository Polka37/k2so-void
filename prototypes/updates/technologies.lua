local data_util = require("__Krastorio2-spaced-out__.data-util")

data.raw.technology["fish-breeding"].hidden = true
data.raw.technology["tree-seeding"].hidden = true
data.raw.technology["uranium-ammo"].hidden = true
data.raw.technology["nuclear-fuel-reprocessing"].hidden = true
data.raw.technology["captive-biter-spawner"].hidden = true
data.raw.technology["biter-egg-handling"].hidden = true
data.raw.technology["captivity"].hidden = true
data.raw.technology["planet-discovery-nauvis"].hidden = true
data.raw.technology["kr-nuclear-locomotive"].hidden = true
data.raw.technology["kr-matter-uranium-processing"].hidden = true
data.raw.technology["atomic-bomb"].hidden = true
data.raw.technology["kr-fusion-reactor-equipment"].hidden = true
data.raw.technology["kr-fusion-energy"].hidden = true
data.raw.technology["nuclear-power"].hidden = true
data.raw.technology["kovarex-enrichment-process"].hidden = true
data.raw.technology["uranium-processing"].hidden = true
data.raw.technology["uranium-mining"].hidden = true --required to mine with liquds, will break mod compatibility TODO add generic fluid mining technology

data_util.add_prerequisite("biolab", "agricultural-science-pack")
data_util.add_prerequisite("overgrowth-soil", "agricultural-science-pack")
data_util.add_prerequisite("overgrowth-soil", "agricultural-science-pack")
data_util.add_prerequisite("production-science-pack", "advanced-material-processing")
data_util.add_prerequisite("spidertron", "fission-reactor-equipment")
data_util.add_prerequisite("fission-reactor-equipment", "electromagnetic-science-pack")
data_util.add_prerequisite("kr-quarry-mineral-extraction", "recycling")

data_util.remove_prerequisite("biolab", "biter-egg-handling")
data_util.remove_prerequisite("biolab", "uranium-processing")
data_util.remove_prerequisite("productivity-module-3", "biter-egg-handling")
data_util.remove_prerequisite("overgrowth-soil", "biter-egg-handling")
data_util.remove_prerequisite("kr-biter-virus", "biter-egg-handling")
data_util.remove_prerequisite("promethium-science-pack", "biter-egg-handling")
data_util.remove_prerequisite("kr-antimatter-reactor", "kr-fusion-energy")
data_util.remove_prerequisite("production-science-pack", "uranium-processing")
data_util.remove_prerequisite("fission-reactor-equipment", "nuclear-power")
data_util.remove_prerequisite("planet-discovery-aquilo", "planet-discovery-nauvis")
data_util.remove_prerequisite("uranium-mining", "planet-discovery-nauvis")
data_util.remove_prerequisite("spidertron", "kr-fusion-reactor-equipment")
data_util.remove_prerequisite("kr-quarry-mineral-extraction", "electric-engine")

data_util.add_recipe_unlock("biochamber", "kr-water-mineralization")
data_util.add_recipe_unlock("kr-quarry-mineral-extraction", "kr-quarry-drill")
data_util.add_recipe_unlock("fusion-reactor", "kr-fusion-reactor")
data_util.add_recipe_unlock("fusion-reactor", "kr-advanced-steam-turbine")
