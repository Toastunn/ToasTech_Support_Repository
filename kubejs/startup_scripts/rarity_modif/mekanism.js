ItemEvents.modification(event => {
  event.modify(['mekanism:digital_miner'], item => {
    item.rarity = "supreme"
  })
})