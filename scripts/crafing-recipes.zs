import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.recipe.replacement.IFilteringRule;
import crafttweaker.api.recipe.replacement.type.ModsFilteringRule;
import crafttweaker.api.recipe.replacement.type.ManagerFilteringRule;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.random.Percentaged;
//removing recipes
  //craftingTable.remove();
    var removeArray = [
      <item:minecraft:flint_and_steel>,
      <item:minecraft:end_crystal>,
      <item:mekanism:steel_casing>,
      <item:mekanism:metallurgic_infuser>,
      <item:mekanism:ultimate_induction_cell>,
      <item:mekanism:elite_induction_cell>,
      <item:mekanism:advanced_induction_cell>,
      <item:mekanism:advanced_induction_provider>,
      <item:mekanism:elite_induction_provider>,
      <item:mekanism:ultimate_induction_provider>,
      <item:mekanism:basic_fluid_tank>,
      <item:mekanism:digital_miner>,
      <item:mekanism:teleportation_core>,
      <item:mekanism:dimensional_stabilizer>,
      <item:mekanism:robit>,
      <item:enderio:void_chassis>,
      <item:enderio:iron_gear>,
      <item:enderio:pulsating_crystal>,
      <item:enderio:vibrant_crystal>,
      <item:ae2:energy_acceptor>,
      <item:ae2:chest>,
      <item:ae2:charger>,
      <item:ae2:vibration_chamber>,
      <item:ae2:inscriber>,
      <item:extendedcrafting:ultimate_component>,
      <item:extendedcrafting:advanced_table>,
      <item:extendedcrafting:elite_table>,
      <item:extendedcrafting:ultimate_table>,
      <item:extendedcrafting:basic_auto_table>,
      <item:extendedcrafting:advanced_auto_table>,
      <item:extendedcrafting:elite_auto_table>,
      <item:extendedcrafting:ultimate_auto_table>,
      <item:extendedcrafting:crafting_core>,
      <item:extendedcrafting:flux_crafter>,
      <item:extendedcrafting:auto_flux_crafter>,
      <item:extendedcrafting:ender_crafter>,
      <item:extendedcrafting:auto_ender_crafter>,
      <item:extendedcrafting:redstone_ingot>
    ] as IIngredient[];

    for element in removeArray {
      craftingTable.remove(element);
    }

  //craftingTable.removeByName();
    var removeByNameArray = [
      'mekanism:induction/cell/basic',
      'mekanism:induction/provider/basic',
      "extendedcrafting:black_iron_ingot",
      "extendedcrafting:luminessence",
      "extendedcrafting:ender_ingot",
      "extendedcrafting:redstone_ingot_uncraft",
      "extendedcrafting:redstone_ingot_block"
    ] as string[];

    for element in removeByNameArray {
      craftingTable.removeByName(element);
    }

//adding recipes
  /*Shaped | craftingTable.addShaped(name as string, output as IItemStack, [
     [inputs as IIngredient],
     [inputs as IIngredient],
     [inputs as IIngredient]]);
    */
    val air = <item:minecraft:air>;
    //minecraft
      var glass = <item:minecraft:glass>;
      craftingTable.addShaped('end_crystal/crafting', <item:minecraft:end_crystal>, [
        [glass, glass, glass],
        [glass, <item:extendedcrafting:ender_star>, glass],
        [glass, <item:mekanism:pellet_antimatter>, glass]]);
    //create
      //create rods
        craftingTable.addShaped('andesite_rod/crafting', <item:kubejs:andesite_rod>, [
          [<item:create:andesite_alloy>],
          [<item:create:andesite_alloy>],
          [<item:create:andesite_alloy>]]);
        craftingTable.addShaped('brass_rod/crafting', <item:kubejs:brass_rod>, [
          [<item:create:brass_ingot>],
          [<item:create:brass_ingot>],
          [<item:create:brass_ingot>]]);
        craftingTable.addShaped('copper_rod/crafting', <item:kubejs:copper_rod>, [
          [<item:minecraft:copper_ingot>],
          [<item:minecraft:copper_ingot>],
          [<item:minecraft:copper_ingot>]]);
      //create frames
        craftingTable.addShaped('andesite_frame', <item:kubejs:andesite_frame>, [
          [<item:kubejs:andesite_rod>, <item:kubejs:andesite_rod>, <item:kubejs:andesite_rod>],
          [<item:kubejs:andesite_rod>, air, <item:kubejs:andesite_rod>],
          [<item:kubejs:andesite_rod>, <item:kubejs:andesite_rod>, <item:kubejs:andesite_rod>]]);
        craftingTable.addShaped('brass_frame', <item:kubejs:brass_frame>, [
          [<item:kubejs:brass_rod>, <item:kubejs:brass_rod>, <item:kubejs:brass_rod>],
          [<item:kubejs:brass_rod>, air, <item:kubejs:brass_rod>],
          [<item:kubejs:brass_rod>, <item:kubejs:brass_rod>, <item:kubejs:brass_rod>]]);
        craftingTable.addShaped('copper_frame', <item:kubejs:copper_frame>, [
          [<item:kubejs:copper_rod>, <item:kubejs:copper_rod>, <item:kubejs:copper_rod>],
          [<item:kubejs:copper_rod>, air, <item:kubejs:copper_rod>],
          [<item:kubejs:copper_rod>, <item:kubejs:copper_rod>, <item:kubejs:copper_rod>]]);
    //mekanism
      craftingTable.addShaped('metallurgic_infuser', <item:mekanism:metallurgic_infuser>, [
        [<item:create:andesite_alloy>, <item:create:spout>, <item:create:andesite_alloy>],
        [<item:minecraft:redstone>, <item:mekanism:steel_casing>, <item:minecraft:redstone>],
        [<item:create:andesite_alloy>, <item:minecraft:furnace>, <item:create:andesite_alloy>]]);
      //Induction cells
        val tablet = <item:mekanism:energy_tablet>;
        craftingTable.addShaped('advanced_induction_cell', <item:mekanism:advanced_induction_cell>, [
          [tablet, <item:mekanism:basic_induction_cell>, tablet],
          [<item:mekanism:basic_induction_cell>, <item:mekanism:nugget_osmium>, <item:mekanism:basic_induction_cell>],
          [tablet, <item:mekanism:basic_induction_cell>, tablet]]);
        craftingTable.addShaped('elite_induction_cell', <item:mekanism:elite_induction_cell>, [
          [tablet, <item:mekanism:advanced_induction_cell>, tablet],
          [<item:mekanism:advanced_induction_cell>, <item:mekanism:ingot_osmium>, <item:mekanism:advanced_induction_cell>],
          [tablet, <item:mekanism:advanced_induction_cell>, tablet]]);
        craftingTable.addShaped('ultimate_indction_cell', <item:mekanism:ultimate_induction_cell>, [
          [tablet, <item:mekanism:elite_induction_cell>, tablet],
          [<item:mekanism:elite_induction_cell>, <item:mekanism:block_osmium>, <item:mekanism:elite_induction_cell>],
          [tablet, <item:mekanism:elite_induction_cell>, tablet]]);
      //Induction provider
        val b_circuit = <item:mekanism:basic_control_circuit>;
        craftingTable.addShaped('advanced_induction_provider', <item:mekanism:advanced_induction_provider>, [
          [b_circuit, <item:mekanism:basic_induction_provider>, b_circuit],
          [<item:mekanism:basic_induction_provider>, <item:mekanism:nugget_osmium>, <item:mekanism:basic_induction_provider>],
          [b_circuit, <item:mekanism:basic_induction_provider>, b_circuit]]);
        craftingTable.addShaped('elite_induction_provider', <item:mekanism:elite_induction_provider>, [
          [b_circuit, <item:mekanism:advanced_induction_provider>, b_circuit],
          [<item:mekanism:advanced_induction_provider>, <item:mekanism:ingot_osmium>, <item:mekanism:advanced_induction_provider>],
          [b_circuit, <item:mekanism:advanced_induction_provider>, b_circuit]]);
        craftingTable.addShaped('ultimate_indction_provider', <item:mekanism:ultimate_induction_provider>, [
          [b_circuit, <item:mekanism:elite_induction_provider>, b_circuit],
          [<item:mekanism:elite_induction_provider>, <item:mekanism:block_osmium>, <item:mekanism:elite_induction_provider>],
          [b_circuit, <item:mekanism:elite_induction_provider>, b_circuit]]);
      //basic tank
        craftingTable.addShaped('basic_fluid_tank', <item:mekanism:basic_fluid_tank>, [
          [<item:minecraft:redstone>, <item:minecraft:iron_ingot>, <item:minecraft:redstone>],
          [<item:minecraft:iron_ingot>, <tag:items:forge:glass>, <item:minecraft:iron_ingot>],
          [<item:minecraft:redstone>, <item:minecraft:iron_ingot>, <item:minecraft:redstone>]]);
      //teleportation core
        craftingTable.addShaped('teleportation_core', <item:mekanism:teleportation_core>, [
          [<item:extendedcrafting:enhanced_ender_catalyst>, <item:enderio:prescient_crystal>, <item:extendedcrafting:enhanced_ender_catalyst>],
          [<item:ae2:silicon>, <item:ae2:quantum_entangled_singularity>, <item:ae2:silicon>],
          [<item:extendedcrafting:enhanced_ender_catalyst>, <item:enderio:prescient_crystal>, <item:extendedcrafting:enhanced_ender_catalyst>]]);
      //dimensional stabilizer
        craftingTable.addShaped('dimensional_stabilizer', <item:mekanism:dimensional_stabilizer>, [
          [<item:mekanism:ingot_refined_obsidian>, <item:mekanism:ultimate_control_circuit>, <item:mekanism:ingot_refined_obsidian>],
          [<item:minecraft:end_crystal>, <item:mekanism:steel_casing>, <item:minecraft:end_crystal>],
          [<item:mekanism:ingot_refined_obsidian>, <item:mekanism:ultimate_control_circuit>, <item:mekanism:ingot_refined_obsidian>]]);
    //ender io
      //infinity bimetal gear
        craftingTable.addShaped('infinity_bimetal_gear', <item:enderio:iron_gear>, [
          [<tag:items:forge:nuggets/zinc>, <item:minecraft:iron_ingot>, <tag:items:forge:nuggets/zinc>],
          [<item:minecraft:iron_ingot>, <item:enderio:grains_of_infinity>, <item:minecraft:iron_ingot>],
          [<tag:items:forge:nuggets/zinc>, <item:minecraft:iron_ingot>, <tag:items:forge:nuggets/zinc>]]);
    //ae2
      //inscriber presses
        var HDPE = <item:mekanism:hdpe_sheet>;
        craftingTable.addShaped('calculation_press', <item:ae2:calculation_processor_press> * 2, [
          [HDPE, <item:ae2:calculation_processor_press>, HDPE],
          [HDPE, <tag:items:crafttweaker:inscriber/printed>, HDPE],
          [HDPE, HDPE, HDPE]]);
        craftingTable.addShaped('engineering_press', <item:ae2:engineering_processor_press> * 2, [
          [HDPE, <item:ae2:engineering_processor_press>, HDPE],
          [HDPE, <tag:items:crafttweaker:inscriber/printed>, HDPE],
          [HDPE, HDPE, HDPE]]);
        craftingTable.addShaped('logic_press', <item:ae2:logic_processor_press> * 2, [
          [HDPE, <item:ae2:logic_processor_press>, HDPE],
          [HDPE, <tag:items:crafttweaker:inscriber/printed>, HDPE],
          [HDPE, HDPE, HDPE]]);
        craftingTable.addShaped('silicon_press', <item:ae2:silicon_press> * 2, [
          [HDPE, <item:ae2:silicon_press>, HDPE],
          [HDPE, <tag:items:crafttweaker:inscriber/printed>, HDPE],
          [HDPE, HDPE, HDPE]]);
      //other
        var iron = <item:minecraft:iron_ingot>;
        craftingTable.addShaped('energy_acceptor/ae2', <item:ae2:energy_acceptor>, [
          [iron, <item:ae2:quartz_glass>, iron],
          [<item:ae2:quartz_glass>, <item:enderio:conductive_alloy_ingot>, <item:ae2:quartz_glass>],
          [iron, <item:ae2:quartz_glass>, iron]]);
        craftingTable.addShaped('me_chest/ae2', <item:ae2:chest>, [
          [<tag:items:forge:glass>, <item:ae2:terminal>, <tag:items:forge:glass>],
          [<item:ae2:fluix_glass_cable>, air, <item:ae2:fluix_glass_cable>],
          [iron, <item:enderio:conductive_alloy_ingot>, iron]]);
        craftingTable.addShaped('charger/ae2', <item:ae2:charger>, [
          [iron, <item:enderio:conductive_alloy_ingot>, iron],
          [iron, air, air],
          [iron, <item:enderio:conductive_alloy_ingot>, iron]]);
        craftingTable.addShaped('vibration_chamber/ae2', <item:ae2:vibration_chamber>, [
          [<item:enderio:conductive_alloy_ingot>, <item:ae2:fluix_crystal>, <item:enderio:conductive_alloy_ingot>],
          [iron, <item:minecraft:furnace>, iron],
          [iron, <item:ae2:energy_acceptor>, iron]]);
        craftingTable.addShaped('inscriber/ae2', <item:ae2:inscriber>, [
          [iron, <item:minecraft:sticky_piston>, iron],
          [<item:enderio:conductive_alloy_ingot>, air, iron],
          [iron, <item:minecraft:sticky_piston>, iron]]);
    //extendedcrafting
      //mekanism modif
        craftingTable.addShapeless('ultimate_component/mekanism', <item:extendedcrafting:ultimate_component>,
          [<item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:luminessence>, <item:mekanism:pellet_polonium>, <item:mekanism:pellet_polonium>]);
        //the table recipe is in extendedcrafting file
  //replacer | this shit is fricking complicated so refer to https://docs.blamejared.com/1.20.1/en/vanilla/api/recipe/replacement/Replacer for reference.
    // forge:gears/stone to enderio:iron_gear
      Replacer.create()
        .filter(ModsFilteringRule.of("enderio"))
        .filter(ManagerFilteringRule.of(<recipetype:minecraft:crafting>))
        .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <tag:items:forge:gears/stone>, <item:enderio:iron_gear>)
        .execute();
    //ender dust * 2
      Replacer.create()
        .filter(ModsFilteringRule.of("create"))
        .replace<Percentaged<IItemStack>>(<recipecomponent:crafttweaker:output/chanced_items>, <item:ae2:ender_dust>%100, <item:minecraft:dirt>%100)
        .replace<Percentaged<IItemStack>>(<recipecomponent:crafttweaker:output/chanced_items>, <item:minecraft:dirt>%100, <item:ae2:ender_dust>*2%100)
        .execute();
    //restone alloy already exists, extendedcrafting
      Replacer.create()
        .filter(ManagerFilteringRule.of(<recipetype:minecraft:crafting>))
        .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <item:extendedcrafting:redstone_ingot>, <item:enderio:redstone_alloy_ingot>)
        .execute();