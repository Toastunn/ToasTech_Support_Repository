ServerEvents.loaded(event => {
  const { server , server: { persistentData } } = event

  if(!persistentData.firstload) {
    let spawnPos = server.overworld().sharedSpawnPos
    let x = spawnPos.x
    let y = spawnPos.y
    let z = spawnPos.z
    console.log(spawnPos)

    let /**@type {BlockPos} */ newSpawnPos;
    let findOpenSpace = () => {
      let level = event.server.getLevel('minecraft:overworld')
      if(y<=64) y = 65
      for(let h = 0; h < 8; h++) {
        for(let w= 0; w < 7; w++) {
          for(let d = 0; d < 7; d++) {
            let dx = x-3 + w
            let dy = y-2 + h
            let dz = z-3 + d
            let block = level.getBlock(dx, dy, dz)
            console.log(`${x}, ${y}, ${z}, ${h}, ${w}, ${d}, ${block.id}`)
            if(!(block.id == 'minecraft:air') && !block.hasTag("minecraft:replaceable_by_trees" || "gravestone:grave_replaceable")) {
              x++
              z++
              console.log("hit1")
              findOpenSpace()
              console.log(newSpawnPos)
              return newSpawnPos
            } else if(block.hasTag("minecraft:leaves")) {
              y-=3
              console.log("hit2")
              findOpenSpace()
              console.log(newSpawnPos)
              return newSpawnPos
            } 
          }
        }
      }
      newSpawnPos = new BlockPos(x, y, z)
      console.log('success', newSpawnPos)
      return newSpawnPos
    }

    newSpawnPos = findOpenSpace()
    console.log(newSpawnPos)

    x = newSpawnPos.x
    y = newSpawnPos.y
    z = newSpawnPos.z
    extrude(event, x, y-3, z)
    server.runCommandSilent(`setworldspawn ${x} ${y} ${z}`)
    server.runCommandSilent(`place template toastech_datapack:global_recall ${Math.floor(x-3)} ${Math.floor(y-3)} ${Math.floor(z-3)}`)

    server.gameRules.set('spawnRadius', 0)
    server.gameRules.set('doFireTick', false)
    persistentData.firstload = true
    server.runCommandSilent(`kjs reload startup_scritps`)
  }
})

/**
 * 
 * @param {Internal.ServerEventJS} event 
 * @param {number} x 
 * @param {number} y 
 * @param {number} z
 */

function extrude(event, x, y, z) {
  let level = event.server.getLevel('minecraft:overworld')
  let blocksPlaced = false
  for(let w= 0; w < 7; w++) {
    for(let d = 0; d < 7; d++) {
      let dx = x-3 + w
      let dz = z-3 + d
      let block = level.getBlock(dx, y, dz)
      if(block.id == 'minecraft:air' || block.hasTag("minecraft:replaceable_by_trees" || "gravestone:grave_replaceable")) {
        level.setBlock([dx,y,dz], Block.id("minecraft:quartz_pillar").blockState, 1)
        blocksPlaced = true
      }
    }
  }
  if(blocksPlaced) {
    y--
    console.log(y)
    extrude(event, x, y, z)
  }
}