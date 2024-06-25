let $PatchouliAPI = Java.loadClass('vazkii.patchouli.api.PatchouliAPI').get()
let $BoundingBox = Java.loadClass('net.minecraft.world.level.levelgen.structure.BoundingBox')
let $Selection = Java.loadClass('com.simibubi.create.foundation.ponder.Selection')

let ratCount = 0
EntityEvents.spawned(event => {
  const {entity, level, server} = event
  
  if(entity.type == "rats:rat") {
    let pos = diamondCheck(level, entity.block)
    console.log(pos, entity, $PatchouliAPI.getMultiblock('toastech:rat_king_summon').validate(level, pos))

    if (!$PatchouliAPI.getMultiblock('toastech:rat_king_summon').validate(level, pos)) return
    ratCount++
    console.log(ratCount)
    entity.tags.add("rat_king_summon")

    if(ratCount >= 16) {
      let rats = level.getEntitiesWithin(new AABB.ofBlocks(pos.offset(-8, -8, -8), pos.offset(8, 8, 8)))

      let success = false
      success = ratCheck2(rats, success)
      console.log(success)

      if(success == true) {

        server.scheduleInTicks(40, () => {
          let /** @type {Internal.Selection} */ monument = new $Selection.of(new $BoundingBox(pos.x-1, pos.y-3, pos.z-1, pos.x+1, pos.y, pos.z+1))

          monument.forEach(block => {
            level.removeBlock(block, false)
          })

          server.runCommandSilent(`execute in ${level.getDimension()} run summon rats:rat_king ${pos.x} ${pos.y} ${pos.z}`)

          rats.forEach(rat => {
            if(rat.type == "rats:rat" && rat.tags.contains("rat_king_summon")) rat.kill()
          })

          let players = [] 
          players = getNearbyPlayers(level, pos, players)
          players.forEach(player => {
            player.tell(Text.darkRed("The Rats rejoice to claim your offering!"))
          })

        })
      }
    }
  }
})

const diamondCheck = (/** @type {Internal.Level} */ level, /** @type {Internal.BlockContainerJS} */ block) => {
    const radius = 7
    const { x, y, z } = block
    for (let dx = -radius; dx <= radius; dx++) {
        for (let dy = -radius; dy <= radius; dy++) {
            for (let dz = -radius; dz <= radius; dz++) {
                let blockPos = new BlockPos(x + dx, y + dy, z + dz)
                let block = level.getBlockState(blockPos).block

                if (block == Blocks.DIAMOND_BLOCK) return blockPos
            }
        }
    }
}

let ratCheck2 = (/** @type {Internal.EntityArrayList} */ rats, /**@type {boolean} */ success) => {
  let subRatCount = 0
  rats.forEach(e => {
    if(e.type == "rats:rat" && e.tags.contains("rat_king_summon")) {
      subRatCount++
      console.log(subRatCount, e.tags.contains("rat_king_summon"))
      if(subRatCount >= 16 ) success = true
    }
  })
  return success;
}

let getNearbyPlayers = (/**@type {Internal.Level} */ level, /**@type {BlockPos} */ pos, /**@type {Internal.Entity[]} */ players) => {
  let entities = level.getEntitiesWithin(new AABB.ofBlocks(pos.offset(-16, -16, -16), pos.offset(16, 16, 16)))
  entities.forEach(entity => {
    if(entity.type == "minecraft:player") players.push(entity)
  })
  return players
}