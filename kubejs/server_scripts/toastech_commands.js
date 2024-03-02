ServerEvents.commandRegistry(event => {
  const { commands: Commands, arguments: Arguments } = event
  event.register(
    Commands.literal('recall')
      .executes(ctx => {
        const player = ctx.source.getEntity()
        const playerName = player.getName().getString()
        const globalRecall = player.level.getSharedSpawnPos()
        const { x, y, z } = globalRecall
          player.runCommandSilent(`tp ${playerName} ${x} ${y+1} ${z} 180 0`)
          return 1
      })
  )
  event.register(
    Commands.literal('currentRecall')
    .executes(ctx => {
      const player = ctx.source.getEntity()
      const { persistentData } = player
        player.tell(Text.yellow('Recall position is currently ').append(Text.aqua(`${persistentData.recallPos}`)))
        return 1
    })
  )
})