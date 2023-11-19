import crafttweaker.api.recipe.IRecipeManager;

//removing recipes

<recipetype:enderio:fire_crafting>.removeAll();

//adding recipes

<recipetype:enderio:alloy_smelting>.addJsonRecipe('alloying_the_infinite', {
  "type": "enderio:alloy_smelting",
  "energy": 48000,
  "experience": 5,
  "inputs": [
    {
      "count": 1,
      "ingredient": {
        "item": "kubejs:ingot_of_infinity"
      }
    },
    {
      "count": 1,
      "ingredient": {
        "item": "kubejs:crystal_of_desolation"
      }
    },
    {
      "count": 1,
      "ingredient": {
        "item": "mekanism:alloy_atomic"
      }
    }
  ],
  "result": {
    "item": "kubejs:alloy_of_infinity"
  }
});

<recipetype:enderio:fire_crafting>.addJsonRecipe('infinity_through_fire',{
  "type": "enderio:fire_crafting",
  "base_blocks": [
    {
      "block": "minecraft:bedrock"
    }
  ],
  "dimensions": [
    "minecraft:overworld"
  ],
  "loot_table": "enderio:fire_crafting/infinity",
  "max_item_drops": 1
}
);