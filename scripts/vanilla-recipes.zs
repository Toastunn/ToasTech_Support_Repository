import crafttweaker.api.recipe.CampFireRecipeManager;
import crafttweaker.api.recipe.StoneCutterManager;

    //removing recipes
        // stoneCutter.remove();
            stoneCutter.remove(<item:create_things_and_misc:sturdy_sheet_block>);
    //adding recipes
        // campfire.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);
            campfire.addRecipe("primitive/water_heating", <item:enderio:fire_water_bucket>, <item:exdeorum:witch_water_bucket>, 0.5, 3000);


/*temp note: The OG recipe for fire water and dark steel(flint and steel) was locked behind stuff that was 
impossible to get through only create, so i'm adding an 'unpreferable route' that's more annoying, but you 
should only do once. Feel free to delete this comment after you read it.
*/
// ^ got it, maybe forcing create could be good, but maybe having multiple paths. otherwise keep this. -weegeeday