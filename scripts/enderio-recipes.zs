import crafttweaker.api.recipe.IRecipeManager;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.ingredient.IIngredientWithAmount;

//removing recipes

<recipetype:enderio:fire_crafting>.removeAll();
<recipetype:enderio:alloy_smelting>.removeByName("enderio:alloy_smelting/pulsating_alloy_ingot");
<recipetype:enderio:alloy_smelting>.removeByName("enderio:alloy_smelting/vibrant_alloy_ingot");
<recipetype:enderio:alloy_smelting>.removeByName("enderio:alloy_smelting/energetic_alloy_ingot");

//recipe functions


//adding recipes

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
});
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
<recipetype:enderio:alloy_smelting>.addJsonRecipe('pulsating_alloy_ingot', {
  "type": "enderio:alloy_smelting",
  "energy": 4800,
  "experience": 0.3,
  "inputs": [
    {
      "count": 1,
      "ingredient": {
        "item": "enderio:energetic_alloy_ingot"
      }
    },
    {
      "count": 1,
      "ingredient": {
        "item": "minecraft:ender_pearl"
      }
    }
  ],
  "result": {
    "item": "enderio:pulsating_alloy_ingot"
  }
});
<recipetype:enderio:alloy_smelting>.addJsonRecipe('vibrant_alloy_ingot', {
  "type": "enderio:alloy_smelting",
  "energy": 4800,
  "experience": 0.3,
  "inputs": [
    {
      "count": 1,
      "ingredient": {
        "item": "enderio:pulsating_alloy_ingot"
      }
    },
    {
      "count": 1,
      "ingredient": {
        "item": "minecraft:prismarine_crystals"
      }
    }
  ],
  "result": {
    "item": "enderio:vibrant_alloy_ingot"
  }
});
<recipetype:enderio:alloy_smelting>.addJsonRecipe('energetic_alloy_ingot', {
  "type": "enderio:alloy_smelting",
  "energy": 4800,
  "experience": 0.3,
  "inputs": [
    {
      "count": 1,
      "ingredient": {
        "item": "enderio:conductive_alloy_ingot"
      }
    },
    {
      "count": 1,
      "ingredient": {
        "item": "ae2:certus_quartz_dust"
      }
    },
    {
      "count": 1,
      "ingredient": {
        "item": "enderio:powdered_gold"
      }
    }
  ],
  "result": {
    "item": "enderio:energetic_alloy_ingot"
  }
});
<recipetype:enderio:enchanting>.addJsonRecipe('hellfire', {
  "type": "enderio:enchanting",
  "cost_multiplier": 1,
  "enchantment": "create_sa:hellfire",
  "input": {
    "count": 1,
    "ingredient": {
      "item": "minecraft:soul_campfire"
    }
  }
});
<recipetype:enderio:enchanting>.addJsonRecipe('arcbolt', {
  "type": "enderio:enchanting",
  "cost_multiplier": 1,
  "enchantment": "kubejs:arcbolt",
  "input": {
    "count": 1,
    "ingredient": {
      "item": "kubejs:lightning"
    }
  }
});
<recipetype:enderio:enchanting>.addJsonRecipe('attraction', {
  "type": "enderio:enchanting",
  "cost_multiplier": 1,
  "enchantment": "kubejs:attraction",
  "input": {
    "count": 1,
    "ingredient": {
      "item": "kubejs:black_hole"
    }
  }
});
<recipetype:enderio:enchanting>.addJsonRecipe('repulsion', {
  "type": "enderio:enchanting",
  "cost_multiplier": 1,
  "enchantment": "kubejs:repulsion",
  "input": {
    "count": 1,
    "ingredient": {
      "item": "kubejs:white_hole"
    }
  }
});
<recipetype:enderio:sag_milling>.addJsonRecipe('netherite_scrap/sag_milling', {
  "type": "enderio:sag_milling",
  "energy": 2400,
  "input": {
    "item": "createchromaticreturn:glowing_ingot"
  },
  "outputs": [
    {
      "chance": 0.9,
      "item": "create:brass_nugget"
    },
    {
      "chance": 0.45,
      "item": "minecraft:netherite_scrap"
    },
    {
      "chance": 0.02,
      "item": "create:crushed_raw_copper"
    },
    {
      "chance": 0.02,
      "item": "create:crushed_raw_copper"
    }
  ]
});