import crafttweaker.api.recipe.IRecipeManager;

//removing recipes



//adding recipes
    //combination
<recipetype:extendedcrafting:combination>.addRecipe("fire_water_and_steel", <item:minecraft:flint_and_steel>, 500, [<item:enderio:fire_water_bucket>, <item:enderio:dark_steel_ingot>,<item:enderio:dark_steel_ingot> ], 10);
<recipetype:extendedcrafting:combination>.addRecipe("superheated_infinite_combination", <item:kubejs:superheated_grains_of_infinity>, 50000, [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "create_sa:hellfire"}]}), <item:kubejs:enchanted_grains_of_infinity>,<item:kubejs:enchanted_grains_of_infinity>,<item:kubejs:enchanted_grains_of_infinity>,<item:kubejs:enchanted_grains_of_infinity>], 500);