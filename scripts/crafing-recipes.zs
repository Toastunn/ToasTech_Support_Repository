//removing recipes | craftingTable.remove();
craftingTable.remove(<item:minecraft:flint_and_steel>);
craftingTable.remove(<item:mekanism:steel_casing>);

//adding recipes
    /*Shaped | craftingTable.addShaped(name as string, output as IItemStack, [
    row 1 [inputs as IIngredient], 
    row 2 [inputs as IIngredient],
    row 3 [inputs as IIngredient]]);
    */
    val air = <item:minecraft:air>;
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