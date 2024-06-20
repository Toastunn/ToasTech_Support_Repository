Ponder.registry(event => {
  //cloud condenser
  event.create("mm:cloud_condenser").scene("condenser_scene", "How to build the Cloud Condenser", "kubejs:cloud_condenser_ponder", (scene, util) => {
    scene.showBasePlate()
    scene.idle(10)
      let multiblock = util.select.layers(1, 7)
      let direction = Direction.SOUTH
    scene.rotateCameraY(90)
    scene.scaleSceneView(0.9)
    scene.setSceneOffsetY(-2)
    
    //part 1
    let pointVec = [2.0, 3.5, 2.0]
    scene.world.showSection(multiblock, direction)
    scene.idleSeconds(1)
    
    scene
      .text(60, "This is the Cloud Condenser.", pointVec)
      .colored(PonderPalette.BLUE)
      .placeNearTarget()
    scene.idle(70)

    scene
      .text(80, "It turns Liquid Steam into Cloud Seed.", pointVec)
      .colored(PonderPalette.BLUE)
      .placeNearTarget()
    scene.idle(90)

    scene
      .text(80, "Here's a layered guide to build it.", pointVec)
      .colored(PonderPalette.BLUE)
      .placeNearTarget()
    scene.idle(90)

    scene.world.hideSection(multiblock, direction)
    scene.idleSeconds(1)
    
    //part 2
    layeredBuildGuide(scene, util, 7, direction, 3, PonderPalette.RED)
  })

  //creative meta-combiner
  event.create("mm:cmc_controller").scene("cmc_scene", "How to build the Creative Meta-Combiner", "kubejs:cmc_ponder", (scene, util) => {
    scene.showBasePlate()
    scene.idle(10)
  
    let normal = [
      [2, 1, 2],
      [4, 1, 2],
      [2, 1, 4],
      [4, 1, 4],
      [2, 4, 5],
      [2, 2, 5],
      [4, 4, 5],
      [4, 2, 5],
      [5, 4, 2],
      [5, 2, 2],
      [5, 4, 4],
      [5, 2, 4],
      [2, 2, 1],
      [4, 4, 1],
      [4, 2, 1],
      [2, 4, 1],
      [1, 2, 2],
      [1, 4, 4],
      [1, 2, 4],
      [1, 4, 2],
      [4, 5, 2],
      [2, 5, 4],
      [4, 5, 4],
      [2, 5, 2]
    ]
    let column_x = [
      [3, 1, 2],
      [3, 1, 4],
      [3, 4, 5],
      [3, 2, 5],
      [3, 4, 1],
      [3, 2, 1],
      [3, 5, 2],
      [3, 5, 4]
    ]
    let column_y = [
      [2, 3, 5],
      [4, 3, 5],
      [5, 3, 2],
      [5, 3, 4],
      [2, 3, 1],
      [4, 3, 1],
      [1, 3, 2],
      [1, 3, 4]
    ]
    let column_z = [
      [2, 1, 3],
      [4, 1, 3],
      [5, 4, 3],
      [5, 2, 3],
      [1, 4, 3],
      [1, 2, 3],
      [2, 5, 3],
      [4, 5, 3]
    ]
  
    normal.forEach(controller =>  scene.world.modifyBlocks(controller, () => Block.id("ae2:controller").with("state", "offline"), false))
    column_x.forEach(controller =>  scene.world.modifyBlocks(controller, () => Block.id("ae2:controller").with("state", "offline").with("type", "column_x"), false))
    column_y.forEach(controller =>  scene.world.modifyBlocks(controller, () => Block.id("ae2:controller").with("state", "offline").with("type", "column_y"), false))
    column_z.forEach(controller =>  scene.world.modifyBlocks(controller, () => Block.id("ae2:controller").with("state", "offline").with("type", "column_z"), false))
    scene.rotateCameraY(180)
    scene.scaleSceneView(0.9)
    scene.setSceneOffsetY(-2)
      let multiblock = util.select.layers(1, 5)
      let direction = Direction.WEST

    //part 1
    let pointVec = [3, 5, 3]
    scene.world.showSection(multiblock, direction)
    scene.idleSeconds(1)
    
    scene
      .text(60, "This is the Creative Meta-Combiner.", pointVec)
      .colored(PonderPalette.BLUE)
      .placeNearTarget()
    scene.idle(70)
  
    scene
      .text(80, "It converts normal items into their creative versions using Creativium.", pointVec)
      .colored(PonderPalette.BLUE)
      .placeNearTarget()
    scene.idle(90)
  
    scene
      .text(80, "Here's a layered guide to build it.", pointVec)
      .colored(PonderPalette.BLUE)
      .placeNearTarget()
    scene.idle(90)
  
    scene.world.hideSection(multiblock, direction)
    scene.idleSeconds(1)
    
    //part 2
    layeredBuildGuide(scene, util, 5, direction, 3, PonderPalette.RED)
  
    //part 3
    scene.text(30, "Don't forget to power the ME Controllers!", pointVec).colored(PonderPalette.BLUE)
    scene.idle(40)
  
    scene.world.showSection(util.select.layer(6), direction)
    scene.idle(20)
  
    normal.forEach(controller =>  {
      scene.world.modifyBlocks(controller, () => Block.id("ae2:controller").with("state", "online"), false)
    })
    column_x.forEach(controller =>  {
      scene.world.modifyBlocks(controller, () => Block.id("ae2:controller").with("state", "online").with("type", "column_x"), false)
    })
    column_y.forEach(controller =>  {
      scene.world.modifyBlocks(controller, () => Block.id("ae2:controller").with("state", "online").with("type", "column_y"), false)
    })
    column_z.forEach(controller =>  {
      scene.world.modifyBlocks(controller, () => Block.id("ae2:controller").with("state", "online").with("type", "column_z"), false)
    })
    scene.idle(20)

    scene.text(60, "Now your Creative Meta-Combiner will work!").colored(PonderPalette.BLUE)
    scene.idle(60)
  })

  //elemental transfigurator
  event.create("mm:elemental_transfigurator").scene("et_scene", "How to build the Elemental Transfigurator", "kubejs:et_ponder", (scene, util) => {
    scene.showBasePlate()
    scene.idle(10)

    scene.rotateCameraY(0)
    scene.scaleSceneView(0.9)
    scene.setSceneOffsetY(-2)
      let multiblock = util.select.layers(1, 3)
      let direction = Direction.EAST
    
    //part 1
      let pointVec = [2.0, 3, 2.0]
    scene.world.showSection(multiblock, direction)
    scene.idleSeconds(1)
    
    scene
      .text(60, "This is the Elemental Transfigurator.", pointVec)
      .colored(PonderPalette.BLUE)
      .placeNearTarget()
    scene.idle(70)

    scene
      .text(80, "It converts a mix of items into an elemental form, be it scientific or cosmic.", pointVec)
      .colored(PonderPalette.BLUE)
      .placeNearTarget()
    scene.idle(90)

    scene
      .text(80, "Here's a layered guide to build it.", pointVec)
      .colored(PonderPalette.BLUE)
      .placeNearTarget()
    scene.idle(90)

    scene.world.hideSection(multiblock, direction)
    scene.idleSeconds(1)
    
    //part 2
    layeredBuildGuide(scene, util, 3, direction, 3, PonderPalette.RED)
  })

  //industrial alloy smelter
  event.create("mm:industrial_alloy_smelter").scene("ias_scene", "How to build the Industrial Alloy Smelter", "kubejs:alloy_smelter_ponder", (scene, util) => {
    scene.showBasePlate()
    scene.idle(10)

    scene.rotateCameraY(270)
    scene.scaleSceneView(0.9)
    scene.setSceneOffsetY(-2)
      let multiblock = util.select.layers(1, 4)
      let direction = Direction.NORTH
    
    //part 1
      let pointVec = [2.0, 3, 2.0]
    scene.world.showSection(multiblock, direction)
    scene.idleSeconds(1)
    
    scene
      .text(60, "This is the Industrial Alloy Smelter.", pointVec)
      .colored(PonderPalette.BLUE)
      .placeNearTarget()
    scene.idle(70)

    scene
      .text(80, "It combines serveral dusts into an alloy, not necessarily of metallic nature.", pointVec)
      .colored(PonderPalette.BLUE)
      .placeNearTarget()
    scene.idle(90)

    scene
      .text(80, "Here's a layered guide to build it.", pointVec)
      .colored(PonderPalette.BLUE)
      .placeNearTarget()
    scene.idle(90)

    scene.world.hideSection(multiblock, direction)
    scene.idleSeconds(1)
    
    //part 2
    layeredBuildGuide(scene, util, 4, direction, 3, PonderPalette.RED)
  })
})



