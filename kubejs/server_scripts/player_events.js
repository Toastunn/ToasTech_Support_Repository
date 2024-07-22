PlayerEvents.loggedIn(event => {
  const { player, player : {persistentData} } = event
    if (!persistentData.gotBooks || persistentData.gotBooks == false) {
      player.give('ftbquests:book')
      player.give('ae2:guide')
      player.give(Item.of('patchouli:guide_book', '{"patchouli:book":"industrialforegoing:industrial_foregoing"}'))
      player.give(Item.of('patchouli:guide_book', '{"patchouli:book":"modularrouters:book"}'))
      player.give(Item.of('patchouli:guide_book', '{"patchouli:book":"extendedcrafting:guide"}'))
      persistentData.gotBooks = true
    }
    if(!persistentData.firstjoin || persistentData.firstjoin == false) {
      const {x ,y ,z} = player.level.getSharedSpawnPos()
      player.runCommandSilent(`tp ${player.username} ${x} ${y} ${z}`)
      player.persistentData.put("portalMute", {startup: true, validate: true, linking: true, linked: true, all: true})
      player.persistentData.putBoolean("recentTeleportJS", false)
      persistentData.firstjoin = true
    }
})

PlayerEvents.respawned(event => {
  const { player } = event
  const worldSpawn = player.level.getSharedSpawnPos()
  const {x, y, z} = worldSpawn
  const playerName = player.username
  console.log(player.block.pos.y, worldSpawn.offset(0,5,0).getY())
    if(player.block.pos.y >= worldSpawn.offset(0,5,0).getY() && player.block.pos.x == x && player.block.pos.z == z) {//better way of doing this?
      player.runCommandSilent(`tp ${playerName} ${x} ${y} ${z}`)
    }
})