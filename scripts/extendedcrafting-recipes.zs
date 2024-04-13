import crafttweaker.api.recipe.IRecipeManager;

//removing recipes
  //flux creafting
    <recipetype:extendedcrafting:flux_crafter>.remove(<item:extendedcrafting:enhanced_redstone_ingot>);
    <recipetype:extendedcrafting:table>.remove(<item:extendedcrafting:ultimate_singularity>);

//adding recipes
  var air = <item:minecraft:air>;
  //combination
    <recipetype:extendedcrafting:combination>.addRecipe("fire_water_and_steel", <item:minecraft:flint_and_steel>, 5000, [<item:enderio:fire_water_bucket>, <item:enderio:dark_steel_ingot>,<item:enderio:dark_steel_ingot> ], 10);
    <recipetype:extendedcrafting:combination>.addRecipe("superheated_infinite_combination", <item:kubejs:superheated_grains_of_infinity>, 50000, [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "create_sa:hellfire"}]}), <item:kubejs:enchanted_grains_of_infinity>,<item:kubejs:enchanted_grains_of_infinity>,<item:kubejs:enchanted_grains_of_infinity>,<item:kubejs:enchanted_grains_of_infinity>], 500);
    <recipetype:extendedcrafting:combination>.addRecipe("the_ultimate_ingot", <item:extendedcrafting:the_ultimate_ingot>, 200000, [<item:extendedcrafting:ultimate_catalyst>, <item:alltheores:aluminum_ingot>, <item:create:andesite_alloy>, <item:extendedcrafting:black_iron_ingot>, <item:create:brass_ingot>, <item:enderio:conductive_alloy_ingot>, <item:alltheores:constantan_ingot>, <item:enderio:copper_alloy_ingot>, <item:minecraft:copper_ingot>, <item:extendedcrafting:crystaltine_ingot>, <item:enderio:dark_steel_ingot>, <item:alltheores:electrum_ingot>, <item:enderio:end_steel_ingot>, <item:extendedcrafting:ender_ingot>, <item:alltheores:enderium_ingot>, <item:enderio:energetic_alloy_ingot>, <item:extendedcrafting:enhanced_ender_ingot>, <item:extendedcrafting:enhanced_redstone_ingot>, <item:minecraft:gold_ingot>, <item:mekanism:ingot_bronze> | <item:alltheores:bronze_ingot>, <item:mekanism:ingot_lead> | <item:alltheores:lead_ingot>, <item:mekanism:ingot_osmium> | <item:alltheores:osmium_ingot>, <item:mekanism:ingot_refined_glowstone>, <item:mekanism:ingot_refined_obsidian>, <item:mekanism:ingot_steel> | <item:alltheores:steel_ingot>, <item:mekanism:ingot_tin> | <item:alltheores:tin_ingot>, <item:mekanism:ingot_uranium> | <item:alltheores:uranium_ingot>, <item:alltheores:invar_ingot>, <item:alltheores:iridium_ingot>, <item:minecraft:iron_ingot>, <item:alltheores:lumium_ingot>, <item:minecraft:netherite_ingot>, <item:alltheores:nickel_ingot>, <item:alltheores:platinum_ingot>, <item:enderio:pulsating_alloy_ingot>, <item:enderio:redstone_alloy_ingot>, <item:alltheores:signalum_ingot>, <item:alltheores:silver_ingot>, <item:enderio:soularium_ingot>,  <item:enderio:vibrant_alloy_ingot>, <item:create:zinc_ingot> | <item:alltheores:zinc_ingot>], 3000);
    <recipetype:extendedcrafting:combination>.addRecipe("the_ultimate_catalyst", <item:extendedcrafting:the_ultimate_catalyst>, 400000, [<item:extendedcrafting:the_ultimate_ingot>, <item:extendedcrafting:crystaltine_catalyst>, <item:extendedcrafting:enhanced_ender_catalyst>, <item:extendedcrafting:ender_catalyst>, <item:extendedcrafting:enhanced_redstone_catalyst>, <item:extendedcrafting:redstone_catalyst>, <item:extendedcrafting:ultimate_catalyst>, <item:extendedcrafting:elite_catalyst>, <item:extendedcrafting:advanced_catalyst>, <item:extendedcrafting:basic_catalyst>], 4000);  
    <recipetype:extendedcrafting:combination>.addRecipe("the_ultimate_component", <item:extendedcrafting:the_ultimate_component>, 500000, [<item:extendedcrafting:the_ultimate_ingot>, <item:extendedcrafting:crystaltine_component>, <item:extendedcrafting:enhanced_ender_component>, <item:extendedcrafting:ender_component>, <item:extendedcrafting:enhanced_redstone_component>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:ultimate_component>, <item:extendedcrafting:elite_component>, <item:extendedcrafting:advanced_component>, <item:extendedcrafting:basic_component>], 5000);
    <recipetype:extendedcrafting:combination>.addRecipe("the_ultimate_singularity", <item:extendedcrafting:ultimate_singularity>, 2000000, [<item:ae2:singularity>, <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:diamond"}), <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:bronze"}), <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:electrum"}), <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:invar"}), <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:steel"}), <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:lapis_lazuli"}), <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:emerald"}), <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:coal"}), <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:redstone"}), <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:aluminum"}), <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:silver"}), <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:tin"}), <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:platinum"}), <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:copper"}), <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:iron"}), <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:lead"}), <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:nickel"}), <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:gold"}), <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:glowstone"})], 300);
    //charms
      val charmMap as IItemStack[IIngredient] = {
        <item:createchromaticreturn:silkstrum>: <item:createchromaticreturn:silkstrum_charm>,
        <item:createchromaticreturn:antiplite_ingot>: <item:createchromaticreturn:antiplite_charm>,
        <item:createchromaticreturn:multiplite_ingot>: <item:createchromaticreturn:multiplite_charm>,
        <item:createchromaticreturn:refined_radiance>: <item:createchromaticreturn:refined_charm>,
        <item:createchromaticreturn:shadow_steel>: <item:createchromaticreturn:shadow_charm>,
        <item:createchromaticreturn:industrium_ingot>: <item:createchromaticreturn:industrium_charm>
      };
      for ingot, charm in charmMap {
        <recipetype:extendedcrafting:combination>.addRecipe(charm.registryName, charm, 1000000, [<item:createchromaticreturn:charm_base>, ingot, ingot, ingot, ingot, ingot, ingot, ingot, ingot, ingot, ingot, ingot, ingot])
      };
  //compression
  //tables <recipetype:extendedcrafting:table>.addShaped(name, tier, <output>, [array]); 
    //tier 0 applies the recipe to all tables that apply
    //3x3 | basic (tier 1)
      <recipetype:extendedcrafting:table>.addShaped("advanced_table", 1, <item:extendedcrafting:advanced_table>, [
          [<item:extendedcrafting:advanced_component>, <item:extendedcrafting:advanced_catalyst>, <item:extendedcrafting:advanced_component>], 
          [<item:extendedcrafting:basic_table> | <item:extendedcrafting:basic_auto_table>, <tag:items:forge:storage_blocks/gold>, <item:extendedcrafting:basic_table> | <item:extendedcrafting:basic_auto_table>], 
          [<item:extendedcrafting:advanced_component>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:advanced_component>]]);
      <recipetype:extendedcrafting:table>.addShaped("basic_auto_table", 1, <item:extendedcrafting:basic_auto_table>, [
        [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:black_iron_ingot>], 
        [<item:extendedcrafting:crystaltine_component>, <item:extendedcrafting:basic_table>, <item:extendedcrafting:crystaltine_component>], 
        [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:black_iron_ingot>]]);
      <recipetype:extendedcrafting:table>.addShaped('pity_black_hole_tank', 1, <item:industrialforegoing:pity_black_hole_tank>, [
        [<item:industrialforegoing:plastic>, <item:industrialforegoing:plastic>, <item:industrialforegoing:plastic>],
        [<item:minecraft:ender_eye>, <item:avaritia:singularity>, <item:minecraft:ender_eye>],
        [<item:minecraft:bucket>, <item:industrialforegoing:machine_frame_pity>, <item:minecraft:bucket>]]);
      <recipetype:extendedcrafting:table>.addShaped('pity_black_hole_unit', 1, <item:industrialforegoing:pity_black_hole_unit>, [
        [<item:industrialforegoing:plastic>, <item:industrialforegoing:plastic>, <item:industrialforegoing:plastic>],
        [<item:minecraft:ender_eye>, <item:avaritia:singularity>, <item:minecraft:ender_eye>],
        [<tag:items:balm:wooden_chests>, <item:industrialforegoing:machine_frame_pity>, <tag:items:balm:wooden_chests>]]);
    
    //5x5 | advanced (tier 2)
      <recipetype:extendedcrafting:table>.addShaped("elite_table", 2, <item:extendedcrafting:elite_table>, [
        [<item:extendedcrafting:elite_component>, <item:extendedcrafting:elite_catalyst>, <item:extendedcrafting:elite_component>], 
        [<item:extendedcrafting:advanced_table> | <item:extendedcrafting:advanced_auto_table>, <tag:items:forge:storage_blocks/diamond>, <item:extendedcrafting:advanced_table> | <item:extendedcrafting:advanced_auto_table>], 
        [<item:extendedcrafting:elite_component>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:elite_component>]]);
      <recipetype:extendedcrafting:table>.addShaped("crafting_core", 2, <item:extendedcrafting:crafting_core>, [
        [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:elite_catalyst>, <item:extendedcrafting:black_iron_ingot>], 
        [<item:extendedcrafting:elite_component>, <item:extendedcrafting:frame>, <item:extendedcrafting:elite_component>], 
        [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_ingot>]]);
      <recipetype:extendedcrafting:table>.addShaped("advanced_auto_table", 2, <item:extendedcrafting:advanced_auto_table>, [
        [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:black_iron_ingot>], 
        [<item:extendedcrafting:crystaltine_component>, <item:extendedcrafting:advanced_table>, <item:extendedcrafting:crystaltine_component>], 
        [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:black_iron_ingot>]]);
      <recipetype:extendedcrafting:table>.addShaped("flux_crafter", 2, <item:extendedcrafting:flux_crafter>, [
        [<tag:items:forge:ingots/gold>, <tag:items:forge:ingots/gold>, <tag:items:forge:ingots/gold>], 
        [<item:enderio:redstone_alloy_ingot>, <item:minecraft:crafting_table>, <item:enderio:redstone_alloy_ingot>], 
        [<item:enderio:redstone_alloy_ingot>, <item:enderio:redstone_alloy_ingot>, <item:enderio:redstone_alloy_ingot>]]);
      <recipetype:extendedcrafting:table>.addShaped("ender_crafter", 2, <item:extendedcrafting:ender_crafter>, [
        [<item:minecraft:ender_eye>, <item:minecraft:ender_eye>, <item:minecraft:ender_eye>], 
        [<item:extendedcrafting:ender_ingot>, <item:minecraft:crafting_table>, <item:extendedcrafting:ender_ingot>], 
        [<item:extendedcrafting:ender_ingot>, <item:extendedcrafting:ender_ingot>, <item:extendedcrafting:ender_ingot>]]);
      <recipetype:extendedcrafting:table>.addShaped("quantum_compressor", 2, <item:extendedcrafting:compressor>, [
        [<item:extendedcrafting:black_iron_block>, <item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:frame>, <item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_block>],
        [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:enhanced_redstone_ingot>, <item:extendedcrafting:elite_component>, <item:extendedcrafting:enhanced_redstone_ingot>, <item:extendedcrafting:black_iron_ingot>],
        [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:elite_catalyst>, <item:avaritia:neutron_compressor>, <item:extendedcrafting:elite_catalyst>, <item:extendedcrafting:black_iron_ingot>],
        [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_slate>, air, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_ingot>],
        [<item:extendedcrafting:black_iron_block>, <item:enderio:reinforced_obsidian_block>, <item:enderio:reinforced_obsidian_block>, <item:enderio:reinforced_obsidian_block>, <item:extendedcrafting:black_iron_block>]]);
      <recipetype:extendedcrafting:table>.addShaped("modular_router", 2, <item:modularrouters:modular_router> * 4, [
        [<item:mekanism:ingot_steel>, <item:minecraft:iron_block>, <item:minecraft:iron_block>, <item:minecraft:iron_block>, <item:mekanism:ingot_steel>],
        [<item:minecraft:iron_block>, <item:enderio:redstone_alloy_ingot>, <item:industrialforegoing:common_black_hole_unit>, <item:enderio:redstone_alloy_ingot>, <item:minecraft:iron_block>],
        [<item:minecraft:iron_block>, <item:modularrouters:blank_module>, <item:extendedcrafting:flux_star>, <item:modularrouters:blank_upgrade>, <item:minecraft:iron_block>],
        [<item:minecraft:iron_block>, <item:enderio:redstone_alloy_ingot>, <item:enderio:filled_soul_vial>.withTag({BlockEntityTag: {EntityStorage: {Entity: {id: "mekanism:robit"}}}}), <item:enderio:redstone_alloy_ingot>, <item:minecraft:iron_block>],
        [<item:mekanism:ingot_steel>, <item:minecraft:iron_block>, <item:minecraft:iron_block>, <item:minecraft:iron_block>, <item:mekanism:ingot_steel>]]);
      <recipetype:extendedcrafting:table>.addShaped("simple_black_hole_tank", 2, <item:industrialforegoing:simple_black_hole_tank>, [
        [<item:alltheores:aluminum_plate>, <item:alltheores:aluminum_plate>, <item:alltheores:aluminum_plate>],
        [<item:minecraft:ender_eye>, <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:diamond"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:bronze"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:electrum"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:invar"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:steel"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:lapis_lazuli"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:emerald"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:coal"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:redstone"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:aluminum"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:silver"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:tin"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:platinum"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:copper"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:iron"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:lead"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:nickel"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:gold"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:glowstone"}), <item:minecraft:ender_eye>],
        [<item:industrialforegoing:pity_black_hole_tank>, <item:industrialforegoing:machine_frame_simple>, <item:industrialforegoing:pity_black_hole_tank>]]);
      <recipetype:extendedcrafting:table>.addShaped("simple_black_hole_unit", 2, <item:industrialforegoing:simple_black_hole_unit>, [
        [<item:alltheores:aluminum_plate>, <item:alltheores:aluminum_plate>, <item:alltheores:aluminum_plate>],
        [<item:minecraft:ender_eye>, <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:diamond"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:bronze"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:electrum"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:invar"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:steel"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:lapis_lazuli"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:emerald"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:coal"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:redstone"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:aluminum"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:silver"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:tin"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:platinum"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:copper"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:iron"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:lead"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:nickel"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:gold"}) | <item:extendedcrafting:singularity>.withTag({"Id": "extendedcrafting:glowstone"}), <item:minecraft:ender_eye>],
        [<item:industrialforegoing:pity_black_hole_unit>, <item:industrialforegoing:machine_frame_simple>, <item:industrialforegoing:pity_black_hole_unit>]]);

    //7x7 | elite (tier 3)
      <recipetype:extendedcrafting:table>.addShaped("ultimate_table/mekanism", 3, <item:extendedcrafting:ultimate_table>, [
          [<item:extendedcrafting:ultimate_component>, <item:extendedcrafting:ultimate_catalyst>, <item:extendedcrafting:ultimate_component>], 
          [<item:extendedcrafting:elite_table> | <item:extendedcrafting:elite_auto_table>, <item:mekanism:block_uranium>, <item:extendedcrafting:elite_table> | <item:extendedcrafting:elite_auto_table>], 
          [<item:extendedcrafting:ultimate_component>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:ultimate_component>]]);
      <recipetype:extendedcrafting:table>.addShaped("elite_auto_table", 3, <item:extendedcrafting:elite_auto_table>, [
          [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:black_iron_ingot>], 
          [<item:extendedcrafting:crystaltine_component>, <item:extendedcrafting:elite_table>, <item:extendedcrafting:crystaltine_component>], 
          [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:black_iron_ingot>]]);
      <recipetype:extendedcrafting:table>.addShaped("advanced_black_hole_tank", 3, <item:industrialforegoing:advanced_black_hole_tank>, [
        [<item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>],
        [<item:enderio:ender_crystal>, <item:ae2:singularity>, <item:enderio:ender_crystal>],
        [<item:industrialforegoing:simple_black_hole_tank>, <item:industrialforegoing:machine_frame_advanced>, <item:industrialforegoing:simple_black_hole_tank>]]);
      <recipetype:extendedcrafting:table>.addShaped("advanced_black_hole_unit", 3, <item:industrialforegoing:advanced_black_hole_unit>, [
        [<item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>],
        [<item:enderio:ender_crystal>, <item:ae2:singularity>, <item:enderio:ender_crystal>],
        [<item:industrialforegoing:simple_black_hole_unit>, <item:industrialforegoing:machine_frame_advanced>, <item:industrialforegoing:simple_black_hole_unit>]]);
    //9x9 | ultimate (tier 4)
      <recipetype:extendedcrafting:table>.addShaped("ultimate_auto_table", 4, <item:extendedcrafting:ultimate_auto_table>, [
          [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:black_iron_ingot>], 
          [<item:extendedcrafting:crystaltine_component>, <item:extendedcrafting:ultimate_table>, <item:extendedcrafting:crystaltine_component>], 
          [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:black_iron_ingot>]]);
      <recipetype:extendedcrafting:table>.addShaped('supreme_black_hole_tank', 4, <item:industrialforegoing:supreme_black_hole_tank>, [
        [<item:blocksyouneed_luna:antimetal_ingot>, <item:blocksyouneed_luna:antimetal_ingot>, <item:blocksyouneed_luna:antimetal_ingot>],
        [<item:avaritia:endest_pearl>, <item:extendedcrafting:ultimate_singularity>, <item:avaritia:endest_pearl>],
        [<item:industrialforegoing:advanced_black_hole_tank>, <item:industrialforegoing:machine_frame_supreme>, <item:industrialforegoing:advanced_black_hole_tank>]]);
      <recipetype:extendedcrafting:table>.addShaped('supreme_black_hole_unit', 4, <item:industrialforegoing:supreme_black_hole_unit>, [
        [<item:blocksyouneed_luna:antimetal_ingot>, <item:blocksyouneed_luna:antimetal_ingot>, <item:blocksyouneed_luna:antimetal_ingot>],
        [<item:avaritia:endest_pearl>, <item:extendedcrafting:ultimate_singularity>, <item:avaritia:endest_pearl>],
        [<item:industrialforegoing:advanced_black_hole_unit>, <item:industrialforegoing:machine_frame_supreme>, <item:industrialforegoing:advanced_black_hole_unit>]]);
  //flux crafting
    <recipetype:extendedcrafting:flux_crafter>.addShaped("auto_flux_crafter", <item:extendedcrafting:auto_flux_crafter>, [
      [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:black_iron_ingot>], 
      [<item:extendedcrafting:crystaltine_component>, <item:extendedcrafting:flux_crafter>, <item:extendedcrafting:crystaltine_component>], 
      [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:black_iron_ingot>]], 250000);
    <recipetype:extendedcrafting:flux_crafter>.addShaped("enhanced_redstone_ingot", <item:extendedcrafting:enhanced_redstone_ingot> * 4, [
      [air, <item:enderio:redstone_alloy_ingot>, air], 
      [<item:enderio:redstone_alloy_ingot>, <item:extendedcrafting:flux_star>, <item:enderio:redstone_alloy_ingot>], 
      [air, <item:enderio:redstone_alloy_ingot>, air]], 800000);
    <recipetype:extendedcrafting:flux_crafter>.addShaped('blsck_hole_controller', <item:industrialforegoing:black_hole_controller>, [
      [<item:industrialforegoing:supreme_black_hole_unit>, <item:industrialforegoing:pity_black_hole_tank>, <item:industrialforegoing:simple_black_hole_tank>],
      [<item:industrialforegoing:advanced_black_hole_unit>, <item:storagedrawers:controller>, <item:industrialforegoing:advanced_black_hole_tank>],
      [<item:industrialforegoing:simple_black_hole_unit>, <item:industrialforegoing:pity_black_hole_unit>, <item:industrialforegoing:supreme_black_hole_tank>]], 400000);
  //ender crafting
    <recipetype:extendedcrafting:ender_crafter>.addShaped("auto_ender_crafter", <item:extendedcrafting:auto_ender_crafter>, [
      [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:black_iron_ingot>], 
      [<item:extendedcrafting:crystaltine_component>, <item:extendedcrafting:ender_crafter>, <item:extendedcrafting:crystaltine_component>], 
      [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:black_iron_ingot>]]);
    <recipetype:extendedcrafting:ender_crafter>.addShaped("wand_of_recall", <item:kubejs:wand_of_recall>.withTag({mode:'set', CustomModelData:0}), [
      [air, <item:enderio:vibrant_crystal>, <item:enderio:ender_crystal>],
      [air, <item:extendedcrafting:crystaltine_ingot>, <item:enderio:pulsating_crystal>],
      [<item:extendedcrafting:crystaltine_ingot>, air, air]]);
    <recipetype:extendedcrafting:compressor>.addRecipe('null_singularity', <item:kubejs:void_in_a_bottle>, <item:avaritia:singularity>, 256, <item:garnished:void_dust>, 20000);