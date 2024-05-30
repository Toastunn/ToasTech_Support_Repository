import crafttweaker.api.recipe.IRecipeManager;
import mods.avaritia.ExtremeTableCrafting;

//removing recipes

craftingTable.removeByName("avaritia:diamond_lattice");
<recipetype:avaritia:extreme_craft_recipe>.removeByName("avaritia:infinity_ingot");
<recipetype:avaritia:extreme_craft_recipe>.removeByName("avaritia:neutron_compressor");
<recipetype:avaritia:extreme_craft_recipe>.removeByName("avaritia:neutron_collector");
<recipetype:avaritia:extreme_craft_recipe>.removeByName("avaritia:ultimate_stew");
<recipetype:avaritia:extreme_craft_recipe>.removeByName("avaritia:cosmic_meatballs");
<recipetype:avaritia:extreme_craft_recipe>.removeByName("avaritia:infinity_catalyst");

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
<recipetype:avaritia:extreme_craft_recipe>.addJsonRecipe("anti_infinity", {
  "type": "avaritia:shaped_extreme_craft",
  "category": "equipment",
  "key": {
    "V": {
      "item": "kubejs:void_in_a_bottle"
    },
    "S": {
      "item": "avaritia:singularity"
    },
    "A": {
      "item": "blocksyouneed_luna:antimetal_ingot"
    },
    "I": {
      "item": "avaritia:infinity_ingot"
    },
  },
  "pattern": [

    "  AA   AA",
    "  AIISIIA",
    "VVISSISSI" ,
    "  AIISIIA",
    "  AA   AA"
  ],
  "result": {
    "item": "kubejs:anti_infinity"
  },
  "show_notification": true
});
<recipetype:avaritia:extreme_craft_recipe>.addJsonRecipe("radiant_glow_saber", {
  "type": "avaritia:shaped_extreme_craft",
  "category": "equipment",
  "key": {
    "I": {
      "item": "avaritia:infinity_sword"
    },
    "P": {
      "item": "createchromaticreturn:cyber_plating"
    },
    "M": {
      "item": "createchromaticreturn:refined_mechanism"
    },
    "S": {
      "item": "createchromaticreturn:shadow_steel"
    },
    "T": {
      "item": "createchromaticreturn:multiplite_tube"
    },
    "C": {
      "item": "createchromaticreturn:chromatic_compound"
    },
    "R": {
      "item": "createchromaticreturn:refined_radiance"
    }
  },
  "pattern": [
    "       CR",
    "      CRC",
    "     CRC ",
    "    CRC  ",
    "   CRC   ",
    " SCRC    ",
    " PIC     ",
    "PTPS     ",
    "MP       "
  ],
  "result": {
    "item": "createchromaticreturn:radiant_glow_saber"
  },
  "show_notification": true
});
<recipetype:avaritia:extreme_craft_recipe>.addJsonRecipe("ultimate_stew", {
  "type": "avaritia:shapeless_extreme_craft",
  "category": "equipment",
  "ingredients": [
    {
      "item": "minecraft:apple"
    },
    {
      "item": "minecraft:golden_apple"
    },
     {
      "item": "minecraft:bread"
    },
    {
      "item": "minecraft:kelp"
    },
    {
      "item": "minecraft:cocoa_beans"
    },
    {
      "item": "minecraft:cake"
    },
    {
      "item": "minecraft:glistering_melon_slice"
    },
    {
      "item": "minecraft:carrot"
    },
    {
      "item": "minecraft:poisonous_potato"
    },
    {
      "item": "minecraft:chorus_fruit"
    },
    {
      "item": "minecraft:beetroot"
    },
    {
      "item": "minecraft:mushroom_stew"
    },
    {
      "item": "minecraft:honey_bottle"
    },
    {
      "item": "minecraft:sweet_berries"
    },
    {
      "tag" : "garnished:tangles"
    },
    {
      "tag": "garnished:venerable_delicacies"
    },
    {
      "tag": "garnished:slime_drops"
    },
    {
      "item": "garnished:cashew_sorbet_scoop"
    },
    {
      "item": "garnished:chorus_cookie"
    },
    {
      "item": "garnished:chorus_cocktail"
    },
    {
      "item": "garnished:chorus_bowl"
    },
    {
      "item": "garnished:fishy_surprise"
    },
    {
      "item": "garnished:ethereal_concoction"
    },
    {
      "item": "garnished:ender_jelly_bottle"
    },
    {
      "item": "garnished:dusty_regale"
    },
    {
      "item": "garnished:dried_vermilion_kelp"
    },
    {
      "item": "garnished:dried_dulse_kelp"
    },
    {
      "item": "garnished:cosmic_brew"
    },
    {
      "item": "garnished:desolate_stew"
    },
    {
      "item": "garnished:coal_truffle"
    },
    {
      "item": "garnished:chestnut"
    },
    {
      "item": "garnished:cashew"
    },
    {
      "item": "garnished:apple_cider"
    },
    {
      "item": "garnished:almond"
    },
    {
      "item": "garnished:galvanic_haunting"
    },
    {
      "item": "garnished:garnished_meal"
    },
    {
      "item": "garnished:garnished_sweet_berries"
    },
    {
      "item": "garnished:ghandercken"
    },
    {
      "item": "garnished:gloomy_gathering"
    },
    {
      "item": "garnished:grim_stew"
    },
    {
      "item": "garnished:hazelnut"
    },
    {
      "item": "garnished:icy_mastic_chunk"
    },
    {
      "item": "garnished:illuminating_cocktail"
    },
    {
      "item": "garnished:incendiary_stew"
    },
    {
      "item": "garnished:macadamia"
    },
    {
      "item": "garnished:merry_treat"
    },
    {
      "item": "garnished:mud_pie"
    },
    {
      "item": "garnished:muesli"
    },
    {
      "item": "garnished:mulch"
    },
    {
      "item": "garnished:murky_jelly"
    },
    {
      "item": "garnished:murky_macadamia_malice"
    },
    {
      "item": "garnished:nopalito_wrap"
    },
    {
      "item": "garnished:nopalito_wrap_supreme"
    },
    {
      "item": "garnished:nut_mix"
    },
    {
      "item": "garnished:nut_nacho_bowl"
    },
    {
      "item": "garnished:nutty_melody"
    },
    {
      "item": "garnished:overgrown_brew"
    },
    {
      "item": "garnished:peanut"
    },
    {
      "item": "garnished:peanut_cinder_sandwich"
    },
    {
      "item": "garnished:peanut_oil"
    },
    {
      "item": "garnished:pecan"
    },
    {
      "item": "garnished:pecan_pie"
    },
    {
      "item": "garnished:pistachio"
    },
    {
      "item": "garnished:porkchop_and_graze"
    },
    {
      "item": "garnished:prickly_pear"
    },
    {
      "item": "garnished:prickly_pear_stew"
    },
    {
      "item": "garnished:putrid_stew"
    },
    {
      "item": "garnished:rosy_cocktail"
    },
    {
      "item": "garnished:salad"
    },
    {
      "item": "garnished:shining_dish"
    },
    {
      "item": "garnished:sinopia_rock_sweet"
    },
    {
      "item": "garnished:soul_khana"
    },
    {
      "item": "garnished:spirited_concoction"
    },
    {
      "item": "garnished:stew_of_the_damned"
    },
    {
      "item": "garnished:sturdy_waffle"
    },
    {
      "item": "garnished:thorn_on_a_stick"
    },
    {
      "item": "garnished:tophet_brew"
    },
    {
      "item": "garnished:vast_brew"
    },
    {
      "item": "garnished:vermilion_stew"
    },
    {
      "item": "garnished:void_mixture"
    },
    
    {      
      "item": "avaritia:neutron_nugget"
    }
  ],
  "result": {
    "item": "avaritia:ultimate_stew"
  }
});
<recipetype:avaritia:extreme_craft_recipe>.addJsonRecipe("cosmic_meatballs", {
  "type": "avaritia:shapeless_extreme_craft",
  "category": "equipment",
  "ingredients": [
    {
      "item": "minecraft:porkchop"
    },
    {
      "item": "minecraft:beef"
    },
    {
      "item": "minecraft:mutton"
    },
    {
      "item": "minecraft:cod"
    },
    {
      "item": "minecraft:salmon"
    },
    {
      "item": "minecraft:tropical_fish"
    },
    {
      "item": "minecraft:pufferfish"
    },
    {
      "item": "minecraft:rabbit"
    },
    {
      "item": "minecraft:chicken"
    },
    {
      "item": "minecraft:rotten_flesh"
    },
    {
      "item": "minecraft:spider_eye"
    },
    {
      "tag": "forge:eggs"
    },
    {
      "item": "garnished:cooked_tenebrous_meat"
    },
    {
      "item": "rats:raw_rat"
    },
    {
      "item": "garnished:phantom_steak"
    },
    {
      "item": "garnished:aching_tenebrous_clump"
    },
    {
      "item": "garnished:raw_tenebrous_meat"
    },

    {
      "item": "garnished:walnut"
    },
    {
      "item": "garnished:walnut_gorge_cream"
    },
    {
      "item": "garnished:weeping_tangle"
    },
    {
      "item": "garnished:wheat_graze"
    },
    {
      "item": "garnished:yam_o_glow_puffs"
    },
    {
      "item": "create:sweet_roll"
    },
    {
      "item": "enderio:enderios"
    },
    {
      "item": "create:honeyed_apple"
    },
    {
      "item": "create:chocolate_glazed_berries"
    },
    {
      "item": "garnished:almond_cheese"
    },
    {
      "item": "garnished:cackling_pie"
    },
    {
      "item": "garnished:brownie_walnuts"
    },
    {
      "item": "garnished:blazing_delight"
    },
    {
      "item": "garnished:bewildered_pastry"
    },
    {
      "item": "garnished:bamboo_clod"
    },
    {
      "item": "garnished:baklava"
    },
    {
      "item": "garnished:cashew_sorbet_delight"
    },
    {
      "item": "garnished:cashew_mixture"
    },
    {
      "item": "garnished:cashew_fruit"
    },
    {
      "item": "garnished:cashew_cookie"
    },
    {
      "tag": "garnished:senile_sweets"
    },
    {
      "item": "rats:potato_knishes"
    },
    {
      "item": "rats:potato_pancake"
    },
    {
      "item": "rats:confit_byaldi"
    },
    {
      "item": "rats:assorted_vegetables"
    },
    {
      "item": "rats:rat_burger"
    },
    {
      "item": "rats:plague_stew"
    },
    {
      "item": "rats:cheese"
    },
    {
      "tag": "garnished:mastic_paste"
    },
    {      
      "item": "garnished:galactic_cane"
    },
    {
      "item": "avaritia:neutron_nugget"
    }
  ],
  "result": {
    "item": "avaritia:cosmic_meatballs"
  }
});
<recipetype:avaritia:extreme_craft_recipe>.addJsonRecipe("infinity_catalyst", {
  "type": "avaritia:shapeless_extreme_craft",
  "category": "equipment",
  "ingredients": [
    {
      "item": "avaritia:crystal_matrix_ingot"
    },
    {
      "item": "avaritia:neutron_ingot"
    },
    {
      "item": "avaritia:cosmic_meatballs"
    },
    {
      "item": "avaritia:ultimate_stew"
    },
    {
      "item": "avaritia:endest_pearl"
    },
    {
      "item": "avaritia:record_fragment"
    },
    {
      "item": "rats:corrupt_rat_skull"
    },
    {
      "item": "minecraft:wither_skeleton_skull"
    },
    {
      "item": "kubejs:void_in_a_bottle"
    },
    {
      "item": "enderio:player_token"
    },
    {
      "item": "enderio:weather_crystal"
    },
    {
      "item": "mekanism:pellet_antimatter"
    },
    {
      "item": "mekanism:teleportation_core"
    },
    {
      "item": "ae2:singularity"
    },
    {
      "item": "ae2:spatial_cell_component_128"
    },
    {
      "item": "ae2:cell_component_256k"
    },
    {
      "item": "blocksyouneed_luna:uhe_solar_panel"
    },
    {
      "item": "extendedcrafting:ultimate_singularity"
    }
  ],
  "result": {
    "item": "avaritia:infinity_catalyst"
  }
});