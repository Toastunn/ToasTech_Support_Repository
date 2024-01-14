import crafttweaker.api.recipe.IRecipeManager;

//removing recipes
  //flux creafting
    <recipetype:extendedcrafting:flux_crafter>.remove(<item:extendedcrafting:enhanced_redstone_ingot>);

//adding recipes
  var air = <item:minecraft:air>;
  //combination
    <recipetype:extendedcrafting:combination>.addRecipe("fire_water_and_steel", <item:minecraft:flint_and_steel>, 500, [<item:enderio:fire_water_bucket>, <item:enderio:dark_steel_ingot>,<item:enderio:dark_steel_ingot> ], 10);
    <recipetype:extendedcrafting:combination>.addRecipe("superheated_infinite_combination", <item:kubejs:superheated_grains_of_infinity>, 50000, [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "create_sa:hellfire"}]}), <item:kubejs:enchanted_grains_of_infinity>,<item:kubejs:enchanted_grains_of_infinity>,<item:kubejs:enchanted_grains_of_infinity>,<item:kubejs:enchanted_grains_of_infinity>], 500);
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
      //7x7 | elite (tier 3)
        <recipetype:extendedcrafting:table>.addShaped("ultimate_table/mekanism", 3, <item:extendedcrafting:ultimate_table>, [
          [<item:extendedcrafting:ultimate_component>, <item:extendedcrafting:ultimate_catalyst>, <item:extendedcrafting:ultimate_component>], 
          [<item:extendedcrafting:elite_table> | <item:extendedcrafting:elite_auto_table>, <item:mekanism:block_uranium>, <item:extendedcrafting:elite_table> | <item:extendedcrafting:elite_auto_table>], 
          [<item:extendedcrafting:ultimate_component>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:ultimate_component>]]);
        <recipetype:extendedcrafting:table>.addShaped("elite_auto_table", 3, <item:extendedcrafting:elite_auto_table>, [
          [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:black_iron_ingot>], 
          [<item:extendedcrafting:crystaltine_component>, <item:extendedcrafting:elite_table>, <item:extendedcrafting:crystaltine_component>], 
          [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:black_iron_ingot>]]);
      //9x9 | ultimate (tier 4)
        <recipetype:extendedcrafting:table>.addShaped("ultimate_auto_table", 4, <item:extendedcrafting:ultimate_auto_table>, [
          [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:black_iron_ingot>], 
          [<item:extendedcrafting:crystaltine_component>, <item:extendedcrafting:ultimate_table>, <item:extendedcrafting:crystaltine_component>], 
          [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:black_iron_ingot>]]);
  //flux crafting
    <recipetype:extendedcrafting:flux_crafter>.addShaped("auto_flux_crafter", <item:extendedcrafting:auto_flux_crafter>, [
      [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:black_iron_ingot>], 
      [<item:extendedcrafting:crystaltine_component>, <item:extendedcrafting:flux_crafter>, <item:extendedcrafting:crystaltine_component>], 
      [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:black_iron_ingot>]], 250000);
    <recipetype:extendedcrafting:flux_crafter>.addShaped("enhanced_redstone_ingot", <item:extendedcrafting:enhanced_redstone_ingot> * 4, [
      [air, <item:enderio:redstone_alloy_ingot>, air], 
      [<item:enderio:redstone_alloy_ingot>, <item:extendedcrafting:flux_star>, <item:enderio:redstone_alloy_ingot>], 
      [air, <item:enderio:redstone_alloy_ingot>, air]], 800000);
  //ender crafting
    <recipetype:extendedcrafting:ender_crafter>.addShaped("auto_ender_crafter", <item:extendedcrafting:auto_ender_crafter>, [
      [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:black_iron_ingot>], 
      [<item:extendedcrafting:crystaltine_component>, <item:extendedcrafting:ender_crafter>, <item:extendedcrafting:crystaltine_component>], 
      [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:redstone_component>, <item:extendedcrafting:black_iron_ingot>]]);
