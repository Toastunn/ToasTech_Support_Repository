ItemEvents.rightClicked(event => {
  const {item,level,server,player,player:{x,y,z,username}} = event
  if (level.dimension != 'ae2:spatial_storage') return
  if (item.id != 'minecraft:glass_bottle') return
    item.count--
    player.give('kubejs:void_in_a_bottle')
    server.runCommandSilent(`playsound minecraft:item.bottle.fill_dragonbreath block ${username} ${x} ${y} ${z} 1 1`)
})