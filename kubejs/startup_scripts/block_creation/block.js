const $BooleanProperty = Java.loadClass('net.minecraft.world.level.block.state.properties.BooleanProperty')
StartupEvents.registry("block", event => {
  event.create('block').property($BooleanProperty.create("see_void")).blockEntity(entityInfo => {
    entityInfo.serverTick(40, 0, entity => {
      let x = entity.x
      let z = entity.z
      let seeVoid = true
      let voidY = 0;
      switch (entity.level.dimension) {
        case 'minecraft:the_nether':
        case 'minecraft:the_end':
          voidY = 0
          break;
        case 'minecraft:overworld':
          voidY = -64
      }
      for(let y = entity.y-1; y >= voidY; y--) {
        let checkBlock = entity.level.getBlock(x, y, z)
          if(!(checkBlock.getId() === ('minecraft:air' || 'minecraft:cave_air'))) seeVoid = false;
          if(seeVoid == false) y = voidY;
      }
      console.log(seeVoid)
      if(seeVoid == true) {
        entity.block.set('kubejs:block', {"see_void": true})
      } else {
        entity.block.set('kubejs:block', {"see_void": false})
      }
    })
  })
})