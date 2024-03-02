import crafttweaker.api.recipe.IRecipeManager;
import mods.avaritia.ExtremeTableCrafting;

//removing recipes

craftingTable.removeByName("avaritia:diamond_lattice");
<recipetype:avaritia:extreme_craft_recipe>.removeByName("avaritia:infinity_ingot");
<recipetype:avaritia:extreme_craft_recipe>.removeByName("avaritia:neutron_compressor");
<recipetype:avaritia:extreme_craft_recipe>.removeByName("avaritia:neutron_collector");

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
});
<recipetype:avaritia:extreme_craft_recipe>.addJsonRecipe("neutron_compressor", {
  "type": "avaritia:shaped_extreme_craft",
  "category": "equipment",
  "key": {
    "C": {
      "item": "avaritia:crystal_matrix_ingot"
      },
    "H": {
      "item": "minecraft:hopper"
      },
    "I": {
      "item": "minecraft:iron_block"
      },
    "N": {
      "item": "avaritia:neutron_ingot"
      },
    "F": {
      "item": "extendedcrafting:flux_star"
      },
    "R": {
      "item": "extendedcrafting:enhanced_redstone_ingot_block"
      }
  },
  "pattern": [
    "IIIHHHIII",
    "C N   N C",
    "I N   N I",
    "C N   N C",
    "RNN F NNR",
    "C N   N C",
    "I N   N I",
    "C N   N C",
    "IIICICIII"
  ],
  "result": {
    "item": "avaritia:neutron_compressor"
  },
  "show_notification": true
});
<recipetype:avaritia:extreme_craft_recipe>.addJsonRecipe("neutron_collector", {
  "type": "avaritia:shaped_extreme_craft",
  "category": "equipment",
  "key": {
    "C": {
      "item": "avaritia:crystal_matrix_ingot"
    },
    "I": {
      "item": "minecraft:iron_block"
    },
    "Q": {
      "item": "minecraft:quartz_block"
    },
    "S": {
      "item": "ae2:spatial_pylon"
    },
    "M": {
      "item": "ae2:condenser"
    },
    "P": {
      "item": "enderio:vibrant_photovoltaic_module"
    },
    "V": {
      "item": "kubejs:void_in_a_bottle"
    },
    "R": {
      "item": "minecraft:redstone_block"
      }
  },
  "pattern": [
    "IIIPPPIII",
    "I QQQQQ I",
    "I SSSSS I",
    "CRSMMMSRC",
    "I SMVMS I",
    "CRSMMMSRC",
    "I SSSSS I",
    "I  R R  I",
    "IIICICIII"
  ],
  "result": {
    "item": "avaritia:neutron_collector"
  },
  "show_notification": true
});
<recipetype:avaritia:extreme_craft_recipe>.addJsonRecipe("ore_laser_base", {
  "type": "avaritia:shaped_extreme_craft",
  "category": "equipment",
  "key": {
    "A": {
      "item": 'createchromaticreturn:andesite_component'
    },
    "B": {
      "item": 'industrialforegoing:pity_black_hole_unit'
    },
    "D": {
      "item": 'mekanism:digital_miner'
    },
    "E": {
      "item": 'mekanism:ultimate_energy_cube'
    },
    "F": {
      "item": 'extendedcrafting:flux_star'
    },
    "G": {
      "item": 'connectedglass:clear_glass'
      },
    "I": {
      "item": 'blocksyouneed_luna:antimetal_ingot'
    },
    "L": {
      "item": 'mekanism:laser_tractor_beam'
    },
    "M": {
      "item": 'mekanismgenerators:laser_focus_matrix'
    },
    "N": {
      "item": 'avaritia:singularity'
    },
    "O": {
      "item": 'alltheores:enderium_gear'
    },
    "P": {
      "item": 'avaritia:endest_pearl'
    },
    "R": {
      "item": 'createchromaticreturn:refined_radiance'
    },
    "S": {
      "item": 'create_things_and_misc:experience_sheet'
    },
    "U": {
      "item": 'extendedcrafting:the_ultimate_component'
    },
    "V": {
      "item": 'kubejs:fan_void_catalyst'
    },
    "W": {
      "item": 'enderio:weather_crystal'
    },
    "2": {
      "item": 'ae2:spatial_pylon'
    }
  },
  "pattern": [
    "RRRRRRRRR",
    "ROBUDUBOR",
    "RBEPWPEBR",
    "ROBUNUBOR",
    "AGGGLGGGA",
    "ASI2V2ISA",
    "ASI2M2ISA",
    "ASI2M2ISA",
    "AAAAFAAAA"
  ],
  "result": {
    "item": "industrialforegoing:ore_laser_base"
  },
  "show_notification": true
});
 
 
 
 
 
 
 
 

