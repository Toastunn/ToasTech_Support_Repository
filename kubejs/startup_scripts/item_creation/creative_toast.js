StartupEvents.registry('item', event => {
  event.create('creative_toast')
  .glow(true)
  .rarity('chromatic')
  .tooltip('It Spreads...')
  .texture("kubejs:item/toast")
  .food(food => {
    food
      .hunger(20)
      .saturation(1000)
      .eaten(ctx => {
        ctx.player.give('kubejs:creative_toast')
      })
  })
})