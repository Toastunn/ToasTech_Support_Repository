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
  //splashing
<recipetype:create:splashing>.addRecipe("washing_the_infinite", [<item:kubejs:washed_grains_of_infinity> % 100], <item:kubejs:raw_grains_of_infinity>, 200);
  //mixing
<recipetype:create:mixing>.addRecipe("dew_of_the_void/mixing", <constant:create:heat_condition:superheated>, [<fluid:enderio:dew_of_the_void> * 800], [<item:garnished:void_dust> * 2], [<fluid:kubejs:liquid_dragons_breath> * 50], 1000);
  //deploying
<recipetype:create:deploying>.addRecipe("being_lonely", <item:enderio:enticing_crystal>, <item:garnished:desolate_spread>, [<item:kubejs:crystal_of_desolation> % 100], false);
  //sequenced assembly
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("ingoting_the_infinite")
 .transitionTo(<item:kubejs:incomplete_ingot_of_infinity>)
 .require(<item:kubejs:crystal_of_infinity>)
 .addOutput(<item:kubejs:ingot_of_infinity> * 2, 100)
 .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:enderio:dew_of_the_void> * 200))
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:enderio:ender_crystal_powder>))
 .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(40))
 .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(55))
 .addStep<mods.createtweaker.CuttingRecipe>((rb) => rb.duration(80)));