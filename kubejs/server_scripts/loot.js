LootJS.modifiers((event) => {

    event
      .addLootTableModifier("enderio:fire_crafting/infinity")
      .removeLoot("enderio:grains_of_infinity");
    event
      .addLootTableModifier("enderio:fire_crafting/infinity")
      .randomChance(0.08)
      .addLoot("kubejs:raw_grains_of_infinity");
    event.addLootTableModifier("minecraft:chests/ruined_portal")
      .removeLoot("minecraft:flint_and_steel")
      .removeLoot("minecraft:fire_charge")
});

ServerEvents.loaded(event => {
  const $LootDataType = Java.loadClass('net.minecraft.world.level.storage.loot.LootDataType')
  
  let lootData = Utils.server.getLootData()
  // this will be a list of all the resourcelocations.
  let allTables = lootData.getKeys($LootDataType.TABLE)
  // filter it for only stuff that contains chest
  let filteredList = allTables.stream().filter(id => id.path.contains('chest')).map(id => id.toString()).toList()
  
  JsonIO.write('kubejs/lootTables.json', {big_list: filteredList})
})