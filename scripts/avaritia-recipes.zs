import crafttweaker.api.recipe.IRecipeManager;

//removing recipes

craftingTable.removeByName("avaritia:diamond_lattice");
<recipetype:avaritia:extreme_craft_recipe>.removeByName("avaritia:infinity_ingot");

//adding recipes

<recipetype:avaritia:extreme_craft_recipe>.addJsonRecipe("forging_the_infinite", {
  "type": "avaritia:shaped_extreme_craft",
  "category": "equipment",
  "key": {
    "C": {
      "item": "avaritia:crystal_matrix_ingot"
    },
    "N": {
      "item": "avaritia:neutron_ingot"
    },
    "X": {
      "item": "avaritia:infinity_catalyst"
    },
    "A": {
      "item": "kubejs:alloy_of_infinity"
    },
  },
  "pattern": [
    "ANNNNNNNA",
    "NCXXCXXCN",
    "NXCCXCCXN",
    "NCXXCXXCN",
    "ANNNNNNNA"
  ],
  "result": {
    "item": "avaritia:infinity_ingot"
  },
  "show_notification": true
}
);

