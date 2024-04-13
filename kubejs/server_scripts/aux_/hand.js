ServerEvents.commandRegistry(event => {
  const { commands: Commands, arguments: Arguments } = event
  event.register(Commands.literal('hand')
    .requires(src => src.hasPermission(2))
    .executes(ctx => {

      const player = ctx.source.getEntity()
      const item = Item.of(player.getHeldItem('main_hand')).getId()
      const key = Item.of(item).getDescriptionId()
      const ctResource = `<resource:${item}>`

        if (!(item == Item.getEmpty())) {

          player.tell('For KubeJS:')
          player.runCommandSilent(`kjs hand`)
          player.tell('For CraftTweaker:')
          player.runCommandSilent(`ct hand`)
          player.tell(
            Text.white('Resource Key:').append(Text.green(`${ctResource}`)).clickCopy(`${ctResource}`)
            .hover(
              Text.white(`Click to copy [`).append(Text.gold(`${ctResource}`)).append(Text.white(']'))
            ))
          player.tell('For JSON:')
          player.tell(Text.gray('- ').append(Text.red(`"${key}"`).clickCopy(`"${key}"`).hover('Translation Key [Click to copy]')))
          player.tell(Text.gray('- ').append(Text.red(`"${item}"`).clickCopy(`"${item}"`).hover('Item ID [Click to copy]')))

          return 1

        } else {

          player.tell(Text.yellow('Please hold an item while executing the command.'))

          return 0

        }
    })
  )
})