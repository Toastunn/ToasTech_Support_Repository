ItemEvents.rightClicked("kubejs:charm_token", event => {
  const {item, player} = event
  player.runCommandSilent(`curios add charm ${player.username} 1`)
  player.tell([Text.yellow("You have gained"), Text.green(' 1 '), Text.yellow("charm slot!")])
  item.shrink(1)
})