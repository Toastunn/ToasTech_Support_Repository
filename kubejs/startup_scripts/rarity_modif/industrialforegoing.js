ItemEvents.modification(event => {
  event.modify(['industrialforegoing:ore_laser_base'], item => {
    item.rarity = "cosmic"
  })
})