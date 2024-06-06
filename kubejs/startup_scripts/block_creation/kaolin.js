StartupEvents.registry('block', e => {
  e.create("kaolin")
  .gravelSoundType()
  .hardness(0.8)
  .resistance(0.2)
  .tagBlock("minecraft:mineable/shovel")
  .tagBlock("minecraft:mineable/pickaxe")
})