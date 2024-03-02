import crafttweaker.api.recipe.CampFireRecipeManager;
import crafttweaker.api.recipe.StoneCutterManager;
import crafttweaker.api.recipe.FurnaceRecipeManager;
import crafttweaker.api.recipe.BlastFurnaceRecipeManager;

  //removing recipes
    // stoneCutter.remove();
      stoneCutter.remove(<item:create_things_and_misc:sturdy_sheet_block>);
    // blastFurnace.remove();
      blastFurnace.remove(<item:blocksyouneed_luna:antimetal_ingot>);
  //adding recipes
    // campfire.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);
      campfire.addRecipe("primitive/water_heating", <item:enderio:fire_water_bucket>, <item:exdeorum:witch_water_bucket>, 0.5, 3000);
    // furnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);