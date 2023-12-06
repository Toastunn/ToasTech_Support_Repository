import crafttweaker.api.recipe.IRecipeManager;
import mods.create.SplashingManager;
import mods.createtweaker.SequencedAssemblyRecipeBuilder;
import mods.create.CuttingManager;
import mods.create.CompactingManager;
import mods.create.FillingManager;
import mods.create.MixingManager;
import mods.create.DeployerApplicationManager;
import mods.create.PressingManager;

//removing recipes | <recipetype:create:(recipe manager)>.remove(output as IIngredient);
  //Item Application | if you remove a recipe from <recipetype:create:item_application>, it will also remove it from <recipetype:create:deploying> if the recipe ID (F3+H) ends in using_deployer.
    //Deploying | <recipetype:create:deploying>
      <recipetype:create:deploying>.remove(<item:create:copper_casing>);
    //Manual Application | <recipetype:create:item_application>
      <recipetype:create:item_application>.remove(<item:create:copper_casing>);
      <recipetype:create:item_application>.remove(<item:create:brass_casing>);
      <recipetype:create:item_application>.remove(<item:create:andesite_casing>);

//adding recipes (refer to https://docs.blamejared.com/1.20.1/en/mods/CreateTweaker/SplashingManager for recipe managers)
  //splashing | <recipetype:create:splashing>.addRecipe(name as string, outputs as Percentaged<IItemStack>[], input as IIngredient, duration as int);
    <recipetype:create:splashing>.addRecipe("washing_the_infinite", [<item:kubejs:washed_grains_of_infinity> % 100], <item:kubejs:raw_grains_of_infinity>, 200);
  //mixing | <recipetype:create:mixing>.addRecipe(name as string, heat as HeatCondition, outputs as IFluidStack[] or Percentaged<IItemStack>[], itemInputs as IIngredientWithAmount[], fluidInputs as FluidIngredient[], duration as int);
    <recipetype:create:mixing>.addRecipe("brass/mixing/unheated", <constant:create:heat_condition:none>, [<item:create:brass_ingot>], [<item:minecraft:copper_ingot>, <item:create:zinc_ingot>], [], 200);
    <recipetype:create:mixing>.addRecipe("fungi_liquifaction", <constant:create:heat_condition:none>, [<fluid:kubejs:fungal_mixture> * 50], [<tag:items:forge:mushrooms> * 1], [<fluid:minecraft:water> * 200], 3000);
    <recipetype:create:mixing>.addRecipe("dew_of_the_void/mixing", <constant:create:heat_condition:superheated>, [<fluid:enderio:dew_of_the_void> * 800], [<item:garnished:void_dust> * 2], [<fluid:kubejs:liquid_dragons_breath> * 50], 1000);
    <recipetype:create:mixing>.addRecipe("radiant_alloy/mixing", <constant:create:heat_condition:heated>, [(<item:createchromaticreturn:refined_radiance> * 3) %100], [<item:minecraft:copper_ingot>, <item:create:polished_rose_quartz> * 2], [<fluid:kubejs:glowing_liquid> * 300], 300);
  //Item Application | if you add a recipe from <recipetype:create:item_application>, it will also add it to <recipetype:create:deploying>, but not vice-versa. The recipe created will have using_deployer attached to it.
    //deploying | <recipetype:create:deploying>.addRecipe(name as string, processedItem as IIngredient, heldItem as IIngredient, outputs as Percentaged<IItemStack>[], keepHeldItem as boolean);
      <recipetype:create:deploying>.addRecipe("being_lonely", <item:enderio:enticing_crystal>, <item:garnished:desolate_spread>, [<item:kubejs:crystal_of_desolation> % 100], false);
    //manual application | <recipetype:create:item_application>.addRecipe(name as string, outputs as Percentaged<IItemStack>[], block(item) as IIngredient, heldItem as IIngredient, keepHeldItem as boolean);
      <recipetype:create:deploying>.addRecipe("andesite_casing_w/_frame", <tag:items:forge:stripped_wood>, <item:kubejs:andesite_frame>, [<item:create:andesite_casing> % 100], false);
      <recipetype:create:deploying>.addRecipe("andesite_casing_w/_frame/spruce_advantage", <item:minecraft:spruce_planks>, <item:kubejs:andesite_frame>, [<item:create:andesite_casing> % 100], false);
      <recipetype:create:deploying>.addRecipe("copper_casing_w/_frame", <item:create:andesite_casing>, <item:kubejs:copper_frame>, [<item:create:copper_casing> % 100], false);
  //sequenced assembly | <recipetype:create:sequenced_assembly>.addRecipe(builder as SequencedAssemblyRecipeBuilder);
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
      <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("coating_steel_in_fire")
        .loops(1)
        .transitionTo(<item:kubejs:ingots_of_steel>)
        .require(<item:minecraft:iron_ingot>)
        .addOutput(<item:minecraft:flint_and_steel>.withDamage(32), 80)
        .addOutput(<item:minecraft:flint_and_steel>.withDamage(44), 18)
        .addOutput(<item:minecraft:flint_and_steel>.withDamage(16), 2)
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:iron_ingot>))
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createchromaticreturn:carbon_powder>))
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createchromaticreturn:carbon_powder>))
        .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(100))
        .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:enderio:fire_water> * 500)));
  //compacting | <recipetype:create:compacting>.addRecipe(name as string, heat as HeatCondition, outputs as IFluidStack[], itemInputs as IIngredientWithAmount[], fluidInputs as FluidIngredient[], duration as int);
    <recipetype:create:compacting>.addRecipe("compacting_glow_items", <constant:create:heat_condition:heated>, [<fluid:kubejs:glowing_liquid> * 350], [<tag:items:crafttweaker:glowing_items> * 1], [<fluid:minecraft:water> * 100], 100);
  //filling | <recipetype:create:filling>.addRecipe(name as string, output as Percentaged<IItemStack>, inputContainer as IIngredient, inputFluid as FluidIngredient, duration as int);
    <recipetype:create:filling>.addRecipe("myceliate_dirt", <item:minecraft:mycelium>, <item:minecraft:dirt>, (<fluid:kubejs:fungal_mixture> * 100 ), 60);