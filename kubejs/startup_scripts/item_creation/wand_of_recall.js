StartupEvents.registry('item', event => {
  event.create('wand_of_recall')
  .unstackable()
  .rarity('rare')
  .modelJson({
    parent: 'kubejs:item/wand_of_recall',
    textures: {
      layer0: 'kubejs:item/wand_of_recall/0'
    }
  })
  .subtypes(originalItem => {
    let newList = Utils.newList()
    let newItem = originalItem.copy()
    newItem.setNbt({mode:"set"})
    newItem.setNbt({CustomModelData: 0})
    newList.add(newItem)
    return newList
  })
})
