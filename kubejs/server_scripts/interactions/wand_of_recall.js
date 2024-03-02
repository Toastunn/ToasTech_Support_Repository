ItemEvents.rightClicked('kubejs:wand_of_recall', event => {
  const { item, item : { nbt }, player, player: { persistentData } } = event
  const playerName = player.name.string
    if (!item.hasNBT()) {
      item.nbt = {mode:'set', CustomModelData: 0}
      console.log('Item had no NBT!')
    }
    console.log(nbt)
  let mode = nbt.getString('mode')
  if(player.isCrouching()) {
    let maxNum = 2
    // Check if the item has NaN custom model data
    if (nbt.CustomModelData == NaN) {
      nbt.putInt('CustomModelData', 0)
      console.log('Item had no Model Data!')
    }
    switch (mode) {
      case 'globalRecall':{
        nbt.mode = 'set'
        break;
      }
      case 'recall': {
        nbt.mode = 'globalRecall'
        break;
      }
      case 'set': {
        nbt.mode = 'recall'
        break;
      }
      default: nbt.mode = 'set'
    }
    player.runCommandSilent(`title ${playerName} actionbar "§eMode: §b${nbt.getString('mode')}"`)
    // Increment model by 1, and reset to 0 if it reaches maxNum + 1
      item.nbt.CustomModelData = (item.nbt.CustomModelData + 1) % (maxNum + 1)
      console.log(nbt)
    event.success()
  }
  switch (mode) {
    case 'globalRecall':{
      player.runCommandSilent('recall')
      player.tell(Text.of('Recalled to world spawn!'))
      break;
    }
    case 'recall': {
      let recallPos = persistentData.getString('recallPos')
      player.runCommandSilent(`tp ${playerName} ${recallPos}`)
      player.tell(Text.of('Recalled to last called position!'))
      break;
    }
    case 'set': {
      const { x, y, z } = player
      persistentData.recallPos = `${Math.floor(x)} ${Math.floor(y)} ${Math.floor(z)}`
      player.tell(Text.yellow('Recall position set to ').append(Text.aqua(`${persistentData.recallPos}`)))
      break;
    }
  }
  event.success()
})
