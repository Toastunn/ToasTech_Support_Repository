StartupEvents.registry('block', event => {
  event.create('multiversal_extractor', "cardinal")
  .soundType('lodestone')
  .hardness(5)
  .resistance(25)
  .requiresTool(true)
  .tagBlock('minecraft:mineable/pickaxe')
  .tagBlock('minecraft:needs_diamond_tool')
  .model('kubejs:block/multiversal_extractor')
});