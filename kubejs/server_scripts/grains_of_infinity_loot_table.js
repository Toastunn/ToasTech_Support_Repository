LootJS.modifiers((event) => {

    event
        .addLootTableModifier("enderio:fire_crafting/infinity")
        .removeLoot("enderio:grains_of_infinity");
    event
        .addLootTableModifier("enderio:fire_crafting/infinity")
        .randomChance(0.08)
        .addLoot("kubejs:raw_grains_of_infinity");
});
