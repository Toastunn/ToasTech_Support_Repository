StartupEvents.registry('item', event => {
  event.create('toast')
  .displayName('Perfect Toast')
  .glow(true)
  .rarity('chromatic')
  .food(food => {
    food
      .hunger(20)
      .saturation(1000)
      .eaten(ctx => {
        ctx.item.count++
      })
  })
})