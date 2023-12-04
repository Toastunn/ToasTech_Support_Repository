import crafttweaker.api.recipe.IRecipeManager;
import mods.create.SplashingManager;
import mods.createtweaker.SequencedAssemblyRecipeBuilder;
import mods.create.CuttingManager;
import mods.create.CompactingManager;
import mods.create.FillingManager;
import mods.create.MixingManager;
import mods.create.DeployerApplicationManager;
import mods.create.PressingManager;

//removing recipes



//adding recipes (refer to https://docs.blamejared.com/1.20.1/en/mods/CreateTweaker/SplashingManager for recipe managers)
  //splashing | SplashingManager.addRecipe(name as string, outputs as Percentaged<IItemStack>[], input as IIngredient, duration as int)
<recipetype:create:splashing>.addRecipe("washing_the_infinite", [<item:kubejs:washed_grains_of_infinity> % 100], <item:kubejs:raw_grains_of_infinity>, 200);
  //mixing | MixingManager.addRecipe(name as string, heat as HeatCondition, outputs as IFluidStack[] or Percentaged<IItemStack>[], itemInputs as IIngredientWithAmount[], fluidInputs as FluidIngredient[], duration as int)
<recipetype:create:mixing>.addRecipe("fungi_liquifaction", <constant:create:heat_condition:none>, [<fluid:kubejs:fungal_mixture> * 50], [<tag:items:forge:mushrooms> * 1], [<fluid:minecraft:water> * 200], 3000);
<recipetype:create:mixing>.addRecipe("dew_of_the_void/mixing", <constant:create:heat_condition:superheated>, [<fluid:enderio:dew_of_the_void> * 800], [<item:garnished:void_dust> * 2], [<fluid:kubejs:liquid_dragons_breath> * 50], 1000);
<recipetype:create:mixing>.addRecipe("radiant_alloy/mixing", <constant:create:heat_condition:heated>, [(<item:kubejs:radiant_alloy> * 3) %100], [<item:minecraft:copper_ingot>, <item:create:polished_rose_quartz> * 2], [<fluid:kubejs:glowing_liquid> * 300], 300);
  //deploying | DeployerApplicationManager.addRecipe(name as string, processedItem as IIngredient, heldItem as IIngredient, outputs as Percentaged<IItemStack>[], keepHeldItem as boolean)
<recipetype:create:deploying>.addRecipe("being_lonely", <item:enderio:enticing_crystal>, <item:garnished:desolate_spread>, [<item:kubejs:crystal_of_desolation> % 100], false);
  //sequenced assembly | SequencedAssemblyManager.addRecipe(builder as SequencedAssemblyRecipeBuilder)
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("ingoting_the_infinite")
 .transitionTo(<item:kubejs:incomplete_ingot_of_infinity>)
 .require(<item:kubejs:crystal_of_infinity>)
 .addOutput(<item:kubejs:ingot_of_infinity> * 2, 100)
 .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:enderio:dew_of_the_void> * 200))
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:enderio:ender_crystal_powder>))
 .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(40))
 .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(55))
 .addStep<mods.createtweaker.CuttingRecipe>((rb) => rb.duration(80)));
  //compacting | CompactingManager.addRecipe(name as string, heat as HeatCondition, outputs as IFluidStack[], itemInputs as IIngredientWithAmount[], fluidInputs as FluidIngredient[], duration as int)
<recipetype:create:compacting>.addRecipe("compacting_glow_items", <constant:create:heat_condition:heated>, [<fluid:kubejs:glowing_liquid> * 350], [<tag:items:crafttweaker:glowing_items> * 1], [<fluid:minecraft:water> * 100], 100);
  //filling | <recipetype:create:filling>.addRecipe(name as string, output as Percentaged<IItemStack>, inputContainer as IIngredient, inputFluid as FluidIngredient, duration as int);
<recipetype:create:filling>.addRecipe("myceliate_dirt", <item:minecraft:mycelium>, <item:minecraft:dirt>, <fluid:kubejs:fungal_mixture>, 60);