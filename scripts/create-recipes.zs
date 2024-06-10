import crafttweaker.api.recipe.IRecipeManager;
import mods.create.SplashingManager;
import mods.createtweaker.SequencedAssemblyRecipeBuilder;
import mods.create.CuttingManager;
import mods.create.CompactingManager;
import mods.create.FillingManager;
import mods.create.MixingManager;
import mods.create.DeployerApplicationManager;
import mods.create.PressingManager;
import mods.create.MechanicalCrafterManager;
import mods.create.PressingManager;

//removing recipes | <recipetype:create:(recipe manager)>.remove(output as IIngredient);
  //Item Application | if you remove a recipe from <recipetype:create:item_application>, it will also remove it from <recipetype:create:deploying> if the recipe ID (F3+H) ends in using_deployer.
    //Deploying | <recipetype:create:deploying>
      <recipetype:create:deploying>.remove(<item:create:copper_casing>);
    //Manual Application | <recipetype:create:item_application>
      <recipetype:create:item_application>.remove(<item:create:copper_casing>);
      <recipetype:create:item_application>.remove(<item:create:brass_casing>);
      <recipetype:create:item_application>.remove(<item:create:andesite_casing>);
      <recipetype:create:item_application>.remove(<item:createcasing:creative_casing>);
  //Mixing
    <recipetype:create:mixing>.remove(<item:createchromaticreturn:polonium_nugget>);
    <recipetype:create:mixing>.remove(<item:createchromaticreturn:plutonium_nugget>);
    <recipetype:create:mixing>.remove(<fluid:createchromaticreturn:shadow_essence>);
    <recipetype:create:mixing>.remove(<item:createchromaticreturn:shadow_steel>);
    <recipetype:create:mixing>.remove(<item:createchromaticreturn:refined_radiance>);
    <recipetype:create:mixing>.remove(<item:createchromaticreturn:shadow_mechanism>);
    <recipetype:create:mixing>.remove(<item:createchromaticreturn:refined_mechanism>);
    <recipetype:create:mixing>.remove(<item:createchromaticreturn:creative_flour>);
    <recipetype:create:mixing>.remove(<item:createchromaticreturn:multiplite_ingot>);
    <recipetype:create:mixing>.remove(<item:createchromaticreturn:durasteel_ingot>);
    <recipetype:create:mixing>.remove(<item:createchromaticreturn:fortunite_bar>);
    <recipetype:create:mixing>.remove(<item:createchromaticreturn:silkstrum>);
    <recipetype:create:mixing>.remove(<item:createchromaticreturn:antiplite_ingot>);
    <recipetype:create:mixing>.remove(<item:createchromaticreturn:industrium_ingot>);
    <recipetype:create:mixing>.remove(<item:mekanism:pellet_antimatter>);
    <recipetype:create:mixing>.remove(<item:create:creative_blaze_cake>);
    <recipetype:create:mixing>.remove(<item:create_sa:creative_filling_tank>);
  //crushing
    <recipetype:create:crushing>.remove(<item:garnished:crushed_salt>);
  //filling
    <recipetype:create:filling>.remove(<item:createchromaticreturn:magmatic_mechanism>);
    <recipetype:create:filling>.remove(<item:createchromaticreturn:annealed_mechanism>);
  //pressing
    <recipetype:create:pressing>.remove(<item:createchromaticreturn:silkstrum_charm>);
    <recipetype:create:pressing>.remove(<item:createchromaticreturn:antiplite_charm>);
    <recipetype:create:pressing>.remove(<item:createchromaticreturn:multiplite_charm>);
    <recipetype:create:pressing>.remove(<item:createchromaticreturn:refined_charm>);
    <recipetype:create:pressing>.remove(<item:createchromaticreturn:shadow_charm>);
    <recipetype:create:pressing>.remove(<item:createchromaticreturn:industrium_charm>);
  //haunting
    <recipetype:create:haunting>.remove(<item:mekanism:raw_uranium>);
  //compacting
    <recipetype:create:compacting>.remove(<item:createchromaticreturn:silkstrum_charm>);
    <recipetype:create:compacting>.remove(<item:createchromaticreturn:antiplite_charm>);
    <recipetype:create:compacting>.remove(<item:createchromaticreturn:multiplite_charm>);
    <recipetype:create:compacting>.remove(<item:createchromaticreturn:refined_charm>);
    <recipetype:create:compacting>.remove(<item:createchromaticreturn:shadow_charm>);
    <recipetype:create:compacting>.remove(<item:createchromaticreturn:industrium_charm>);
    <recipetype:create:compacting>.remove(<item:createchromaticreturn:industrium_book>);
    <recipetype:create:compacting>.remove(<item:createchromaticreturn:durasteel_book>);
    <recipetype:create:compacting>.remove(<item:createchromaticreturn:silkstrum_book>);
  //mechanical craft
    <recipetype:create:mechanical_crafting>.remove(<item:createchromaticreturn:radiant_glow_saber>);
    <recipetype:create:mechanical_crafting>.remove(<item:createchromaticreturn:radiant_glow_claws>);
    <recipetype:create:mechanical_crafting>.remove(<item:create:creative_motor>);
//adding recipes (refer to https://docs.blamejared.com/1.20.1/en/mods/CreateTweaker/SplashingManager for recipe managers)
  //splashing | <recipetype:create:splashing>.addRecipe(name as string, outputs as Percentaged<IItemStack>[], input as IIngredient, duration as int);
    <recipetype:create:splashing>.addRecipe("washing_the_infinite", [<item:kubejs:washed_grains_of_infinity> % 100], <item:kubejs:raw_grains_of_infinity>, 200);
    <recipetype:create:splashing>.addRecipe("osmine/platinum/washing", [<item:kubejs:osmine> % 90], <item:create:crushed_raw_platinum>, 200);
    <recipetype:create:splashing>.addRecipe("osmine/nickel/washing", [<item:kubejs:osmine> % 73], <item:create:crushed_raw_nickel>, 200);
    
  //mixing | <recipetype:create:mixing>.addRecipe(name as string, heat as HeatCondition, outputs as IFluidStack[] or Percentaged<IItemStack>[], itemInputs as IIngredientWithAmount[], fluidInputs as FluidIngredient[], duration as int);
    <recipetype:create:mixing>.addRecipe("brass/mixing/unheated", <constant:create:heat_condition:none>, [<item:create:brass_ingot>], [<item:minecraft:copper_ingot>, <tag:items:forge:ingots/zinc>], [], 200);
    <recipetype:create:mixing>.addRecipe("fungi_liquifaction", <constant:create:heat_condition:none>, [<fluid:kubejs:fungal_mixture> * 50], [<tag:items:forge:mushrooms> * 1], [<fluid:minecraft:water> * 200], 3000);
    <recipetype:create:mixing>.addRecipe("dew_of_the_void/mixing", <constant:create:heat_condition:superheated>, [<fluid:enderio:dew_of_the_void> * 800], [<item:garnished:void_dust> * 2], [<fluid:kubejs:liquid_dragons_breath> * 50], 200);
    <recipetype:create:mixing>.addRecipe("radiant_alloy/mixing", <constant:create:heat_condition:superheated>, [(<fluid:createchromaticreturn:refined_mixture> * 800)], [<item:minecraft:copper_ingot>, <item:create:polished_rose_quartz> * 2], [<fluid:kubejs:glowing_liquid> * 300], 300);
    <recipetype:create:mixing>.addRecipe("pulsating_liquid/mixing", <constant:create:heat_condition:superheated>, [<fluid:kubejs:pulsating_liquid> * 1000], [(<item:enderio:pulsating_alloy_ingot> * 8), <item:minecraft:diamond>], [<fluid:mekanism:hydrogen_chloride> * 100], 600);
    <recipetype:create:mixing>.addRecipe("vibrant_liquid/mixing", <constant:create:heat_condition:superheated>, [<fluid:kubejs:vibrant_liquid> * 1000], [(<item:enderio:vibrant_alloy_ingot> * 8), <item:minecraft:emerald>], [<fluid:mekanism:hydrogen_chloride> * 100], 600);
    <recipetype:create:mixing>.addRecipe("luminessence/mixing", <constant:create:heat_condition:heated>, [<item:extendedcrafting:luminessence> * 2], [<item:minecraft:glowstone_dust> * 2, <item:minecraft:redstone> * 1, <item:minecraft:gunpowder> * 1], [<fluid:create_enchantment_industry:experience> * 100], 120);
    <recipetype:create:mixing>.addRecipe("shadow_essence/mixing", <constant:create:heat_condition:superheated>, [<fluid:createchromaticreturn:shadow_essence> * 100], [<item:garnished:void_dust> * 17, <item:enderio:dark_steel_nugget>, <item:kubejs:raw_grains_of_infinity>], [<fluid:enderio:dew_of_the_void> * 345, <fluid:mekanism:heavy_water> * 70], 800); 
    <recipetype:create:mixing>.addRecipe("chromatic_compound/mixing", <constant:create:heat_condition:superheated>, [<item:createchromaticreturn:chromatic_compound> * 2], [<item:createchromaticreturn:refined_radiance>, <item:createchromaticreturn:shadow_steel>, <item:garnished:ethereal_compound>, <item:createchromaticreturn:glowing_ingot>, <item:extendedcrafting:flux_star>], [<fluid:mekanismgenerators:fusion_fuel>], 800);
    <recipetype:create:mixing>.addRecipe("magical_water", <constant:create:heat_condition:none>, [<fluid:kubejs:magical_water> * 1000], [<item:minecraft:mycelium>, <item:kubejs:ethereal_brick>], [<fluid:minecraft:water> * 1000], 3600);
    <recipetype:create:mixing>.addRecipe("magical_water/efficient", <constant:create:heat_condition:superheated>, [<fluid:kubejs:magical_water> * 1000], [<item:minecraft:mycelium>, <item:kubejs:ethereal_brick>], [<fluid:minecraft:water> * 1000], 600);
    <recipetype:create:mixing>.addRecipe("durasteel_ingot", <constant:create:heat_condition:superheated>, [<item:createchromaticreturn:durasteel_ingot>], [<item:createchromaticreturn:chromatic_compound> * 4, <item:createchromaticreturn:bedrock_shard>, <item:minecraft:netherite_ingot>], [], 600);
    <recipetype:create:mixing>.addRecipe("multiplite_ingot",  <constant:create:heat_condition:superheated>, [<item:createchromaticreturn:multiplite_ingot>], [<item:enderio:weather_crystal>, <item:avaritia:singularity>.withTag({Id: "avaritia:chromatic"})], [], 300);
    <recipetype:create:mixing>.addRecipe("silkstrum", <constant:create:heat_condition:superheated>, [<item:createchromaticreturn:silkstrum>], [<item:createchromaticreturn:chromatic_compound>, <item:minecraft:string> * 6, <item:mekanism:block_refined_glowstone>], [], 200);
    <recipetype:create:mixing>.addRecipe("industrium_ingot", <constant:create:heat_condition:superheated>, [<item:createchromaticreturn:industrium_ingot>], [<item:createchromaticreturn:chromatic_compound> * 4, <item:create:wrench>, <item:mekanismgenerators:control_rod_assembly> * 32], [], 900);
    <recipetype:create:mixing>.addRecipe("fortunite_bar", <constant:create:heat_condition:superheated>, [<item:createchromaticreturn:fortunite_bar>], [<item:createchromaticreturn:chromatic_compound> * 7, <item:createchromaticreturn:four_leaf_clover> * 7, <item:minecraft:gold_ingot> * 7], [], 200);
    <recipetype:create:mixing>.addRecipe("antimatter_pellet", <constant:create:heat_condition:superheated>, [<item:mekanism:pellet_antimatter>], [<item:createchromaticreturn:multiplite_ingot>, <item:mekanism:pellet_polonium> * 4, <item:mekanism:pellet_plutonium> * 4, <item:blocksyouneed_luna:antimetal_block> * 32], [], 2000);
    <recipetype:create:mixing>.addRecipe("cloud_seed/dilution", <constant:create:heat_condition:none>, [<fluid:enderio:cloud_seed> * 1000], [], [<fluid:mekanism:ethene> * 170, <fluid:enderio:cloud_seed_concentrated> * 830], 100);
    <recipetype:create:mixing>.addRecipe("lapis/mixing", <constant:create:heat_condition:heated>, [<item:minecraft:lapis_lazuli> * 3], [<item:kubejs:lazurite> * 2, <item:minecraft:calcite> * 1], [], 500);
    <recipetype:create:mixing>.addRecipe("lead_oxide/mixing", <constant:create:heat_condition:superheated>, [<item:kubejs:lead_oxide>], [<item:mekanism:dust_sulfur>], [], 60);
    <recipetype:create:mixing>.addRecipe("impure_lead/mixing", <constant:create:heat_condition:heated>, [<item:alltheores:dirty_lead_dust>], [<item:kubejs:lead_oxide>, <item:blocksyouneed_luna:coke>], [], 120);
    <recipetype:create:mixing>.addRecipe("lead_form_impure/mixing", <constant:create:heat_condition:heated>, [<item:mekanism:dust_lead>], [<item:alltheores:dirty_lead_dust>, <item:mekanism:dust_sulfur>], [<fluid:mekanism:steam>], 100);
    <recipetype:create:mixing>.addRecipe("silver/lead/mixing", <constant:create:heat_condition:none>, [<item:mekanism:dirty_dust_tin>, <item:minecraft:sand>], [<item:minecraft:gravel>], [<fluid:mekanism:hydrogen_chloride> * 1440], 200);
    <recipetype:create:mixing>.addRecipe("iridium/platinum/mixing", <constant:create:heat_condition:none>, [<item:alltheores:iridium_dust>, <item:alltheores:platinum_dust> * 2], [<item:create:crushed_raw_platinum> * 2], [<fluid:mekanism:hydrofluoric_acid> * 760], 200);

  //Item Application | if you add a recipe from <recipetype:create:item_application>, it will also add it to <recipetype:create:deploying>, but not vice-versa. The recipe created will have using_deployer attached to it.
    //deploying | <recipetype:create:deploying>.addRecipe(name as string, processedItem as IIngredient, heldItem as IIngredient, outputs as Percentaged<IItemStack>[], keepHeldItem as boolean);
      <recipetype:create:deploying>.addRecipe("being_lonely", <item:enderio:enticing_crystal>, <item:garnished:desolate_spread>, [<item:kubejs:crystal_of_desolation> % 100], false);
    //manual application | <recipetype:create:item_application>.addRecipe(name as string, outputs as Percentaged<IItemStack>[], block{item} as IIngredient, heldItem as IIngredient, keepHeldItem as boolean);
      <recipetype:create:item_application>.addRecipe("brass_casing_with_frame", [<item:create:brass_casing> %100], <item:create:copper_casing>, <item:kubejs:brass_frame>, false);
      <recipetype:create:item_application>.addRecipe("brass_casing_with_frame/advantage", [<item:create:brass_casing> %100], <item:minecraft:dark_oak_planks>, <item:kubejs:brass_frame>, false);
      <recipetype:create:item_application>.addRecipe("copper_casing_with_frame", [<item:create:copper_casing> %100], <item:create:andesite_casing>, <item:kubejs:copper_frame>, false);
      <recipetype:create:item_application>.addRecipe("copper_casing_with_frame/advantage", [<item:create:copper_casing> %100], <item:biomesoplenty:dead_planks>, <item:kubejs:copper_frame>, false);
      <recipetype:create:item_application>.addRecipe("andesite_casing_with_frame", [<item:create:andesite_casing> %100], <tag:items:forge:stripped_wood>, <item:kubejs:andesite_frame>, false);
      <recipetype:create:item_application>.addRecipe("andesite_casing_with_frame/advantage", [<item:create:andesite_casing> %100], <item:minecraft:spruce_planks>, <item:kubejs:andesite_frame>, false);
      <recipetype:create:item_application>.addRecipe("steel_casing_with_frame", [<item:mekanism:steel_casing> %100], <item:create_things_and_misc:sturdy_sheet_block>, <item:kubejs:andesite_frame>, false);
      <recipetype:create:item_application>.addRecipe("creative_casing", [<item:createcasing:creative_casing> % 100.0], <item:create:railway_casing>, <item:createchromaticreturn:multiplite_ingot>, false);
  //sequenced assembly | <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder(name as string) builder);
    //ingot of infinity
      <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("ingoting_the_infinite") 
        .loops(1) 
        .transitionTo(<item:kubejs:incomplete_ingot_of_infinity>) 
        .require(<item:kubejs:crystal_of_infinity>) 
        .addOutput(<item:kubejs:ingot_of_infinity> * 2, 100)
        .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:enderio:dew_of_the_void> * 200)) 
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:enderio:ender_crystal_powder>)) 
        .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(40))
        .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(55))
        .addStep<mods.createtweaker.CuttingRecipe>((rb) => rb.duration(80))); 
    //fire water and steel
      //part 1
        <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("primitive_steel_ish")
          .loops(1)
          .transitionTo(<item:minecraft:iron_ingot>)
          .require(<item:minecraft:iron_ingot>)
          .addOutput(<item:kubejs:ingots_of_steel_1> * 1, 100)
          .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:iron_ingot>))
          .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createchromaticreturn:carbon_powder>))
          .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createchromaticreturn:carbon_powder>))
          .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(100)));
      //part 2
        <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("the_great_pressing")
          .loops(10)
          .transitionTo(<item:kubejs:ingots_of_steel_1>)
          .require(<item:kubejs:ingots_of_steel_1>)
          .addOutput(<item:kubejs:ingots_of_steel_2> * 1, 100)
          .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(100))
          .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(100))
          .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(100))
          .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(100))
          .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(100)));
      //part 3
        <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("coating_steel_with_fire") 
          .loops(1) 
          .transitionTo(<item:kubejs:ingots_of_steel_2>) 
          .require(<item:kubejs:ingots_of_steel_2>)  
          .addOutput(<item:minecraft:flint_and_steel>.withDamage(32), 80)
          .addOutput(<item:minecraft:flint_and_steel>.withDamage(44), 18) 
          .addOutput(<item:minecraft:flint_and_steel>.withDamage(16), 2)
          .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:enderio:fire_water> * 500 )));
    //void chassis
      <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("void_chassis")
        .loops(1)
        .transitionTo(<item:kubejs:infinite_chassis>)
        .require(<item:mekanism:steel_casing>)
        .addOutput(<item:enderio:void_chassis>, 100)
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:enderio:grains_of_infinity>))
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:garnished:void_dust>)));
    //void steel
      <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("void_steel")
      .loops(2)
      .transitionTo(<item:kubejs:limbo_steel>)
      .require(<item:kubejs:anti_infinity>)
      .addOutput(<item:createchromaticreturn:shadow_steel>, 100)
      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:createchromaticreturn:shadow_essence> * 1000))
      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(100)));
    //radiant infinity
      <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("radiant_infinity")
      .loops(1)
      .transitionTo(<item:kubejs:glowing_steel>)
      .require(<item:createchromaticreturn:shadow_steel>)
      .addOutput(<item:createchromaticreturn:refined_radiance>, 100)
      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:createchromaticreturn:refined_mixture> * 1000))
      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:avaritia:infinity_nugget>))
      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(100))
      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:createchromaticreturn:refined_mixture> * 1000))
      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(100)));
    //shadow mechanism
      <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("shadow_mechanism")
      .loops(5)
      .transitionTo(<item:kubejs:incomplete_shadow_mechanism>)
      .require(<item:createchromaticreturn:shadow_steel>)
      .addOutput(<item:createchromaticreturn:shadow_mechanism>, 100)
      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:cogwheel>))
      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:large_cogwheel>))
      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:avaritia:neutron_nugget>)));
    //magmatic mechanism
      <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("magmatic_mechanism")
      .loops(3)
      .transitionTo(<item:kubejs:incomplete_shadow_mechanism>)
      .require(<item:createchromaticreturn:shadow_mechanism>)
      .addOutput(<item:createchromaticreturn:magmatic_mechanism>, 100)
      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createchromaticreturn:glowing_ingot>))
      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:minecraft:lava> * 1000))
      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(100)));
    //annealed mechanism
      <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("annealed_mechanism")
      .loops(5)
      .transitionTo(<item:kubejs:incomplete_shadow_mechanism>)
      .require(<item:createchromaticreturn:magmatic_mechanism>)
      .addOutput(<item:createchromaticreturn:annealed_mechanism>, 100)
      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:mekanism:steam> * 1000))
      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:minecraft:water> * 1000)));
    //refined mechanism
      <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("refined_mechanism")
      .loops(3)
      .transitionTo(<item:kubejs:incomplete_shadow_mechanism>)
      .require(<item:createchromaticreturn:annealed_mechanism>)
      .addOutput(<item:createchromaticreturn:refined_mechanism>, 100)
      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createchromaticreturn:refined_radiance>))
      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(100))
      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:createchromaticreturn:refined_mixture> * 1000))
      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:mekanism:steam> * 1000)));
  //compacting | <recipetype:create:compacting>.addRecipe(name as string, heat as HeatCondition, outputs as IFluidStack[], itemInputs as IIngredientWithAmount[], fluidInputs as FluidIngredient[], duration as int);
    <recipetype:create:compacting>.addRecipe("compacting_glow_items", <constant:create:heat_condition:heated>, [<fluid:kubejs:glowing_liquid> * 350], [<tag:items:crafttweaker:glowing_items> * 1], [<fluid:minecraft:water> * 100], 100);
    <recipetype:create:compacting>.addRecipe("sturdy_sheet_block_with_compacting", <constant:create:heat_condition:heated>, [<item:create_things_and_misc:sturdy_sheet_block>], [<item:create:sturdy_sheet> * 15], [], 200);
    <recipetype:create:compacting>.addRecipe("charm_token", <constant:create:heat_condition:superheated>, [<item:kubejs:charm_token>], [<item:createchromaticreturn:bedrock_charm_base>, <item:enderio:weather_crystal> * 8], [], 200);
  //filling | <recipetype:create:filling>.addRecipe(name as string, output as Percentaged<IItemStack>, inputContainer as IIngredient, inputFluid as FluidIngredient, duration as int);
    <recipetype:create:filling>.addRecipe("myceliate_dirt", <item:minecraft:mycelium>, <item:minecraft:dirt>, (<fluid:kubejs:fungal_mixture> * 100 ), 60);
    <recipetype:create:filling>.addRecipe('dragons_breath/filling', <item:minecraft:dragon_breath>, <item:minecraft:glass_bottle>, <fluid:kubejs:liquid_dragons_breath> * 250, 20);
    <recipetype:create:filling>.addRecipe('void_in_a_bottle/filling', <item:kubejs:void_in_a_bottle>, <item:minecraft:glass_bottle>, <fluid:kubejs:liquid_void> * 250, 20);
    <recipetype:create:filling>.addRecipe('fan_haunting_catalyst/filling', <item:create_connected:fan_haunting_catalyst>, <item:create_connected:empty_fan_catalyst>, <fluid:kubejs:magical_water> * 1000, 100);
  //cutting | <recipetype:create:cutting>.addRecipe(name as string, output as Percentaged<IItemStack>, input as IIngredient, duration as int);
    <recipetype:create:cutting>.addRecipe("andesite_rod_with_cutting", [(<item:kubejs:andesite_rod> *8) %100], <item:create:andesite_alloy> * 2, 100);
    <recipetype:create:cutting>.addRecipe("copper_rod_with_cutting", [(<item:kubejs:copper_rod> * 8) %100], <item:minecraft:copper_ingot> * 2, 60);
    <recipetype:create:cutting>.addRecipe("brass_rod_with_cutting", [(<item:kubejs:brass_rod> * 8) %100], <item:create:brass_ingot> * 2, 100);
  //mechanical crafting | <recipetype:create:mechanical_crafting>.addRecipe(name as string, output as IItemStack, ingredients as IIngredient[][])
    val air = <item:minecraft:air>;
    <recipetype:create:mechanical_crafting>.addRecipe("digital_miner", <item:mekanism:digital_miner>, [
      [<item:create:andesite_alloy>, <item:mekanismgenerators:turbine_vent>, <item:mekanism:steel_casing>, <item:mekanismgenerators:turbine_vent>, <item:create:andesite_alloy>],
      [<item:mekanism:steel_casing>, <item:mekanism:alloy_atomic>, <item:mekanism:ultimate_control_circuit>, <item:mekanism:alloy_atomic>, <item:ae2:cable_interface>],
      [<item:mekanism:steel_casing>, <item:mekanism:logistical_sorter>, <item:mekanism:robit>, <item:mekanism:logistical_sorter>, <item:ae2:cable_interface>],
      [<item:mekanism:steel_casing>, <item:mekanism:teleportation_core>, <item:mekanism:dimensional_stabilizer>, <item:mekanism:teleportation_core>, <item:ae2:cable_interface>],
      [<item:create:andesite_alloy>, <item:mekanism:laser>, <item:mekanism:laser_amplifier>, <item:mekanism:laser>, <item:create:andesite_alloy>]]);
    <recipetype:create:mechanical_crafting>.addRecipe("robit", <item:mekanism:robit>, [
      [<item:minecraft:white_concrete>, <item:minecraft:white_concrete>, <item:minecraft:white_concrete>],
      [<item:minecraft:ender_eye>, <tag:items:ae2:smart_cable>, <item:minecraft:ender_eye>],
      [<item:create:mechanical_arm>, <item:mekanism:elite_energy_cube>, <item:create:mechanical_arm>],
      [<item:minecraft:white_concrete>, <tag:items:mekanism:personal_storage>, <item:minecraft:white_concrete>],
      [<item:create:belt_connector>, <item:mekanism:steel_casing>, <item:create:belt_connector>]]);
    <recipetype:create:mechanical_crafting>.addRecipe("fluid_laser_base", <item:industrialforegoing:fluid_laser_base>, [
      [air, <item:minecraft:iron_block>, <item:minecraft:iron_block>, <item:minecraft:iron_block>, air],
      [<item:minecraft:iron_block>, <item:mekanism:basic_fluid_tank>, <item:industrialforegoing:machine_frame_advanced>, <item:mekanism:basic_fluid_tank>, <item:minecraft:iron_block>],
      [<item:industrialforegoing:plastic>, <item:industrialforegoing:laser_lens15>, <item:mekanism:laser_tractor_beam>, <item:industrialforegoing:laser_lens15>, <item:industrialforegoing:plastic>],
      [<item:industrialforegoing:plastic>, <item:industrialforegoing:diamond_gear>, <item:enderio:redstone_alloy_ingot>, <item:industrialforegoing:diamond_gear>, <item:industrialforegoing:plastic>]]);
    <recipetype:create:mechanical_crafting>.addRecipe("mekanism/laser", <item:mekanism:laser>, [
      [<item:mekanism:alloy_reinforced>, <item:mekanism:energy_tablet>, <item:minecraft:amethyst_cluster>, <item:minecraft:amethyst_cluster>, <item:minecraft:amethyst_cluster>, air],
      [<item:mekanism:alloy_reinforced>, <item:minecraft:beacon>, <item:connectedglass:clear_glass>, <item:connectedglass:clear_glass>, <item:mekanismgenerators:laser_focus_matrix>, <item:industrialforegoing:laser_lens14>],
      [<item:mekanism:alloy_reinforced>, <item:mekanism:energy_tablet>,<item:minecraft:amethyst_cluster>, <item:minecraft:amethyst_cluster>, <item:minecraft:amethyst_cluster>, air]]);
    <recipetype:create:mechanical_crafting>.addRecipe("radiant_glow_claws", <item:createchromaticreturn:radiant_glow_claws>, [
      [air, air, air, air, air, air, <item:createchromaticreturn:multiplite_ingot>, <item:createchromaticreturn:antiplite_ingot>, air, air],
      [air, air, air, air, air, <item:createchromaticreturn:multiplite_ingot>, <item:createchromaticreturn:antiplite_ingot>, <item:createchromaticreturn:multiplite_ingot>, air, air],
      [air, air, air, air, <item:createchromaticreturn:multiplite_ingot>, <item:createchromaticreturn:antiplite_ingot>, <item:createchromaticreturn:multiplite_ingot>, air, <item:createchromaticreturn:multiplite_ingot>, <item:createchromaticreturn:antiplite_ingot>],
      [air, air, air, <item:createchromaticreturn:multiplite_ingot>, <item:createchromaticreturn:antiplite_ingot>, <item:createchromaticreturn:multiplite_ingot>, air, <item:createchromaticreturn:multiplite_ingot>, <item:createchromaticreturn:antiplite_ingot>, <item:createchromaticreturn:multiplite_ingot>],
      [air, air, <item:createchromaticreturn:multiplite_ingot>, <item:createchromaticreturn:antiplite_ingot>, <item:createchromaticreturn:multiplite_ingot>, air, <item:createchromaticreturn:multiplite_ingot>, <item:createchromaticreturn:antiplite_ingot>, <item:createchromaticreturn:multiplite_ingot>, air],
      [air, <item:createchromaticreturn:cyber_plating>, <item:createchromaticreturn:radiant_glow_saber>, <item:createchromaticreturn:multiplite_ingot>, air, <item:createchromaticreturn:multiplite_ingot>, <item:createchromaticreturn:antiplite_ingot>, <item:createchromaticreturn:multiplite_ingot>, air, air],
      [<item:createchromaticreturn:cyber_plating>, <item:createchromaticreturn:refined_mechanism>, <item:createchromaticreturn:cyber_plating>, air, <item:createchromaticreturn:multiplite_ingot>, <item:createchromaticreturn:antiplite_ingot>, <item:createchromaticreturn:multiplite_ingot>, air, air, air],
      [air, <item:createchromaticreturn:cyber_plating>, <item:createchromaticreturn:refined_radiance>, <item:createchromaticreturn:cyber_plating>, <item:createchromaticreturn:radiant_glow_saber>, <item:createchromaticreturn:multiplite_ingot>, air ,air ,air ,air],
      [air, air, <item:createchromaticreturn:cyber_plating>, <item:createchromaticreturn:refined_mechanism>, <item:createchromaticreturn:cyber_plating>, air, air, air, air, air],
      [air, air, air, <item:createchromaticreturn:cyber_plating>, air, air, air, air, air, air]]);
    <recipetype:create:mechanical_crafting>.addRecipe("industrium_water_source", <item:watersources:water_source_tier_5>, [
      [<item:createchromaticreturn:andesite_component>, <item:createchromaticreturn:andesite_component>, <item:createchromaticreturn:andesite_component>, <item:createchromaticreturn:andesite_component>, <item:createchromaticreturn:andesite_component>, <item:createchromaticreturn:andesite_component>, <item:createchromaticreturn:andesite_component>, <item:createchromaticreturn:andesite_component>, <item:createchromaticreturn:andesite_component>, <item:createchromaticreturn:andesite_component>, <item:createchromaticreturn:andesite_component>],
      [<item:tougherglass:stronger_glass>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:tougherglass:stronger_glass>],
      [<item:tougherglass:stronger_glass>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket> ,<item:tougherglass:stronger_glass>],
      [<item:tougherglass:stronger_glass>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket> ,<item:tougherglass:stronger_glass>],
      [<item:tougherglass:stronger_glass>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket> ,<item:tougherglass:stronger_glass>],
      [<item:tougherglass:stronger_glass>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:watersources:water_source_tier_4>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:tougherglass:stronger_glass>],
      [<item:tougherglass:stronger_glass>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket> ,<item:tougherglass:stronger_glass>],
      [<item:tougherglass:stronger_glass>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket> ,<item:tougherglass:stronger_glass>],
      [<item:tougherglass:stronger_glass>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket> ,<item:tougherglass:stronger_glass>],
      [<item:tougherglass:stronger_glass>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket>, <item:minecraft:water_bucket> ,<item:tougherglass:stronger_glass>],
      [<item:createchromaticreturn:andesite_component>, <item:createchromaticreturn:andesite_component>, <item:createchromaticreturn:andesite_component>, <item:createchromaticreturn:andesite_component>, <item:createchromaticreturn:andesite_component>, <item:createchromaticreturn:andesite_component>, <item:createchromaticreturn:andesite_component>, <item:createchromaticreturn:andesite_component>, <item:createchromaticreturn:andesite_component>, <item:createchromaticreturn:andesite_component>, <item:createchromaticreturn:andesite_component>]]);
    <recipetype:create:mechanical_crafting>.addRecipe("breaker_module", <item:modularrouters:breaker_module>, [
      [<item:modularrouters:vacuum_module>, <item:mekanismtools:refined_obsidian_pickaxe>],
      [<item:itemfilters:block>, <item:create:content_observer>]]);
    <recipetype:create:mechanical_crafting>.addRecipe("energy_distributor_module", <item:modularrouters:energy_distributor_module>, [
      [<item:modularrouters:energy_output_module>, <item:fluxnetworks:flux_point>]]);
    <recipetype:create:mechanical_crafting>.addRecipe("energy_output_module", <item:modularrouters:energy_output_module>, [
      [<item:modularrouters:blank_module>, <item:enderio:energy_conduit>]]);
    <recipetype:create:mechanical_crafting>.addRecipe("extruder_module", <item:modularrouters:extruder_module_1>, [
      [<item:minecraft:sticky_piston>, <item:modularrouters:placer_module>],
      [<item:modularrouters:breaker_module>, <item:minecraft:lever>]]);
    <recipetype:create:mechanical_crafting>.addRecipe("extruder_module_mk2", <item:modularrouters:extruder_module_2>, [
      [<item:modularrouters:extruder_module_1>, <item:ae2:facade>],
      [<item:blocksyouneed_luna:iron_crate>, <item:minecraft:sticky_piston>]]);
    <recipetype:create:mechanical_crafting>.addRecipe("puller_module", <item:modularrouters:puller_module_1>, [
      [<item:modularrouters:blank_module>, <item:minecraft:hopper>]]);
    <recipetype:create:mechanical_crafting>.addRecipe("puller_module_mk2", <item:modularrouters:puller_module_2>, [
      [<item:enderio:coordinate_selector>, <item:modularrouters:puller_module_1>],
      [<item:modularrouters:vacuum_module>, air]]);
    <recipetype:create:mechanical_crafting>.addRecipe("sender_module", <item:modularrouters:sender_module_1>, [
      [<item:modularrouters:flinger_module>, <item:ae2:quantum_link>]]);
    <recipetype:create:mechanical_crafting>.addRecipe("sender_module_mk2", <item:modularrouters:sender_module_2>, [
      [<item:modularrouters:sender_module_1>, <item:ae2:facade>],
      [<item:industrialforegoing:range_addon10>.withTag({TitaniumAugment: {Range: 10.0}}), air]]);
    <recipetype:create:mechanical_crafting>.addRecipe("sender_module_mk3", <item:modularrouters:sender_module_3>, [
      [<item:ae2:quantum_ring>, <item:mekanism:teleporter>, <item:ae2:quantum_ring>],
      [<item:ae2:quantum_ring>, <item:modularrouters:sender_module_2>, <item:ae2:quantum_ring>],
      [<item:ae2:quantum_ring>, <item:mekanism:dimensional_stabilizer>, <item:ae2:quantum_ring>]]);
    <recipetype:create:mechanical_crafting>.addRecipe("flinger_module", <item:modularrouters:flinger_module>, [
      [<item:modularrouters:dropper_module>, <item:enderio:coordinate_selector>],
      [<item:create_connected:control_chip>, <item:create:weighted_ejector>]]);  
    <recipetype:create:mechanical_crafting>.addRecipe("vacuum_module", <item:modularrouters:vacuum_module>, [
      [<item:modularrouters:blank_module>, <item:enderio:vacuum_chest>],
      [<item:enderio:redstone_filter_base>, air]]);
    <recipetype:create:mechanical_crafting>.addRecipe("void_module", <item:modularrouters:void_module>, [
      [<item:modularrouters:blank_module>, <item:mekanism:ultimate_bin>],
      [<item:enderio:redstone_filter_base>, air]]);   
    <recipetype:create:mechanical_crafting>.addRecipe("activator_module", <item:modularrouters:activator_module>, [
      [<item:modularrouters:blank_module>, <item:modularrouters:placer_module>],
      [<item:modularrouters:breaker_module>, <item:enderio:filled_soul_vial>.withTag({BlockEntityTag: {EntityStorage: {Entity: {id: "mekanism:robit"}}}})]]);
    <recipetype:create:mechanical_crafting>.addRecipe("detector_module", <item:modularrouters:detector_module>, [
      [<item:modularrouters:blank_module>, <item:create:content_observer>],
      [<item:create:analog_lever>, air]]);    
    <recipetype:create:mechanical_crafting>.addRecipe("placer_module", <item:modularrouters:placer_module>, [
      [<item:modularrouters:blank_module>, <item:rats:rat_upgrade_placer>]]);
    <recipetype:create:mechanical_crafting>.addRecipe("distributor_module", <item:modularrouters:distributor_module>, [
      [air, <item:modularrouters:sender_module_2>, air],
      [<item:modularrouters:sender_module_2>, air, <item:modularrouters:sender_module_2>],
      [air, <item:modularrouters:sender_module_2>, air]]);
    <recipetype:create:mechanical_crafting>.addRecipe("fluid_module", <item:modularrouters:fluid_module>, [
      [<item:mekanism:ultimate_mechanical_pipe>, <item:modularrouters:blank_module>, <item:mekanism:ultimate_mechanical_pipe>],
      [air, <item:enderio:pressurized_fluid_tank>, air]]);
    <recipetype:create:mechanical_crafting>.addRecipe("fluid_module_mk2", <item:modularrouters:fluid_module_2>, [
      [<item:industrialforegoing:range_addon10>.withTag({TitaniumAugment: {Range: 10.0}}), <item:modularrouters:fluid_module>, <item:industrialforegoing:range_addon10>.withTag({TitaniumAugment: {Range: 10.0}})]]);
    <recipetype:create:mechanical_crafting>.addRecipe("player_module", <item:modularrouters:player_module>, [
      [<item:modularrouters:puller_module_2>, <item:modularrouters:activator_module>, <item:modularrouters:sender_module_2>],
      [air, <item:minecraft:ender_chest>, air]]);
    <recipetype:create:mechanical_crafting>.addRecipe("blank_module", <item:modularrouters:blank_module>, [
      [air, <item:alltheores:signalum_dust>, air],
      [<item:alltheores:platinum_plate>, <item:alltheores:platinum_plate>, <item:alltheores:platinum_plate>],
      [<item:alltheores:lumium_nugget>, <item:alltheores:platinum_plate>, <item:alltheores:lumium_nugget>]]); 
    <recipetype:create:mechanical_crafting>.addRecipe("blank_upgrade", <item:modularrouters:blank_upgrade>, [
      [<item:alltheores:lumium_nugget>, <item:alltheores:platinum_plate>, <item:alltheores:lumium_nugget>],
      [<item:alltheores:platinum_plate>, <item:kubejs:lazurite>, <item:alltheores:platinum_plate>],
      [air, <item:alltheores:platinum_plate>, <item:alltheores:lumium_nugget>]]);          
  //draining | <recipetype:create:emptying>.addRecipe(name as string, outputItem as Percentaged<IItemStack>, outputFluid as IFluidStack, inputContainer as IIngredient, duration as int)  
    <recipetype:create:emptying>.addRecipe('dragons_breath/emptying', <item:minecraft:glass_bottle>, <fluid:kubejs:liquid_dragons_breath> * 250, <item:minecraft:dragon_breath>);
    <recipetype:create:emptying>.addRecipe('void_in_a_bottle/emptying', <item:minecraft:glass_bottle>, <fluid:kubejs:liquid_void> * 250, <item:kubejs:void_in_a_bottle>);
  //crushing | <recipetype:create:crushing>.addRecipe(name as string, output as Percentaged<IItemStack>[], input as IIngredient, duration as int);
    <recipetype:create:crushing>.addRecipe("calcite/crushing", [<item:minecraft:calcite> % 100, <item:minecraft:calcite> % 20, <item:garnished:crushed_salt> % 100.0, <item:minecraft:iron_nugget> * 2 % 10.0, <item:create:zinc_nugget> * 2 % 10.0], <item:create:limestone>, 150);
    <recipetype:create:crushing>.addRecipe("netherite_scrap/crushing", [<item:create:brass_nugget> % 75.0, <item:minecraft:netherite_scrap> % 5.0], <item:createchromaticreturn:glowing_ingot>, 1000);