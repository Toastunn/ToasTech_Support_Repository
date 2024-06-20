Ponder.registry(event => {
  let descriptiveText = PonderPalette.BLUE
  let layerText = PonderPalette.RED

  //mekanism multiblock basics
  event.create("mekanism:structural_glass").tag('kubejs:multiblocks', "kubejs:mekanism_multiblock")

  //part 1
  .scene("basics_overview_scene", "Mekanaism Multiblock Basics: The parts of a multiblock", "kubejs:tank6_ponder", (scene, util) => {
      scene.scaleSceneView(0.7)
      scene.setSceneOffsetY(-2)
      scene.showBasePlate()
      scene.idle(10)
        let multiblock = util.select.fromTo([1,1,1], [6,6,6])
      scene.world.showSection(multiblock, Direction.east)

      text(scene, 60, "In Mekanism, there are 8 multiblocks.", null, false, descriptiveText)

      text(scene, 80 , "All of them have a similar structure consisting of four main parts;", null, false, descriptiveText)

      text(scene, 40, "The edge casing,", util.vector.blockSurface([1, 3, 1], Direction.up), true, descriptiveText)

      text(scene, 40, "The glass,", util.vector.blockSurface([3, 4, 1], Direction.north), true, descriptiveText)

      text(scene, 40, "The ports,", util.vector.blockSurface([2, 2, 1], Direction.north), true, descriptiveText)

        scene.world.hideSection([1,6,1, 6,6,6], Direction.up)
        scene.idle(10)
      text(scene, 60, "And the insides (this multiblock doesn't have any).", util.vector.blockSurface([3, 5, 2], Direction.up), true, descriptiveText)
        scene.world.showSection([1,6,1, 6,6,6], Direction.down)

      text(scene, 60, "No blocks can be used by two multiblocks at the same time.", null, false, descriptiveText)

  })

  //part 2
  .scene("basics_casing_scene", "Mekanaism Multiblock Basics: The casing", "kubejs:tank6_ponder", (scene, util) => {
      scene.scaleSceneView(0.7)
      scene.setSceneOffsetY(-2)
      scene.showStructure()
      scene.idle(15)

        scene.world.hideSection([5,2,1, 2,5,6], Direction.north)
        scene.world.hideSection([1,2,5, 6,5,2], Direction.west)
        scene.world.hideSection([5,6,5, 2,1,2], Direction.up)
      text(scene, 70, "In this multiblock, this is the edge casing:", null, false, descriptiveText)
      
      text(scene, 60, "You cannot replace edge casing with structural glass.", null, false, PonderPalette.RED)
  })

  //part 3
  .scene("basics_glass_scene", "Mekanaism Multiblock Basics: The glass", "kubejs:tank6_ponder", (scene, util) => {
      scene.scaleSceneView(0.7)
      scene.setSceneOffsetY(-2)
      scene.showBasePlate()
        let multiblock = util.select.fromTo([1,1,1], [6,6,6])
      scene.world.showSection(multiblock, Direction.east)
      scene.idle(15)

        scene.world.hideSection(multiblock.substract([5,2,1, 2,5,6]).substract([1,2,5, 6,5,2]).substract([5,6,5, 2,1,2]), Direction.down)
      text(scene, 70, "In this multiblock, this is the 'glass':", null, false, descriptiveText)

      text(scene, 60, "You can replace structural glass with casings or ports, as shown here.", null, false, descriptiveText)
  })

  //part 4
  .scene("basics_port_scene", "Mekanaism Multiblock Basics: The ports", "kubejs:tank6_ponder", (scene, util) => {
      scene.scaleSceneView(0.7)
      scene.setSceneOffsetY(-2)
      scene.showStructure()
        let multiblock = util.select.fromTo([1,1,1], [6,6,6])
      scene.idle(15)

        scene.world.hideSection(multiblock.substract([5,2,1]).substract([2,2,1]), Direction.south)
      text(scene, 70, "In this multiblock, these are the ports:", null, false, descriptiveText)

      text(scene, 60, "Ports can replace any 'glass' block.", null, false, descriptiveText)
        
        scene.world.setBlocks(util.select.fromTo(5,2,1, 2,5,6).add([1,2,5, 6,5,2]).add([5,6,5, 2,1,2]), "mekanism:dynamic_valve", false)
        scene.world.showSection([5,2,1, 2,5,6], Direction.north)
        scene.world.showSection([1,2,5, 6,5,2], Direction.west)
        scene.world.showSection([5,6,5, 2,1,2], Direction.up)
      text(scene, 60, "You can have as many ports as there are 'glass' blocks.", null, false, descriptiveText)

      text(scene, 60, "I don't know why you would want this many, but you can.", null, false, descriptiveText)
  })

  //part 5
  .scene("basics_insides_scene", "Mekanaism Multiblock Basics: The inside", "kubejs:matrix6_ponder", (scene, util) => {
      scene.scaleSceneView(0.7)
      scene.setSceneOffsetY(-2)
      scene.showStructure()
        let multiblock = util.select.fromTo([1,1,1], [6,6,6])
      scene.idle(15)

        scene.world.hideSection(multiblock.substract([2,2,2, 5,5,5]), Direction.down)
      text(scene, 70, "In this multiblock, these are the insides:", null, false, descriptiveText)

      text(scene, 60, "The insides vary depending on the multiblock.", null, false, descriptiveText)
      
      text(scene, 60, "Some may be necessary, some will improve performance.", null, false, descriptiveText)
  })

  //part 6
  .scene("basics_scale_scene", "Mekanaism Multiblock Basics: Scaling", "kubejs:tank18_ponder", (scene, util) => {
      scene.scaleSceneView(0.3)
      scene.setSceneOffsetY(-6)
      scene.showStructure()
      scene.idle(15)

      text(scene, 70, "Almost all Mekanism multiblocks can be scaled up to 18x18x18.", null, false, descriptiveText)

      text(scene, 80, "The only exceptions being the Supercritical Phase Shifter and the Fusion Reactor.", null, false, descriptiveText)

      text(scene, 80, "The Thermal Evaporation Plant can only go 18 blocks tall, as it's base must be 4x4.", null, false, descriptiveText)
      
      text(scene, 60, "Check out the individual builds for more detail.", null, false, descriptiveText)
  })

  //thermal evaporation
  event.create("mekanism:thermal_evaporation_controller").tag('kubejs:multiblocks', "kubejs:mekanism_multiblock")
  .scene("evaporation_scene", "How to build the Thermal Evaporation Plant", "kubejs:evaporation_ponder", (scene, util) => {
    scene.scaleSceneView(0.4)
    scene.setSceneOffsetY(-6)
    scene.showBasePlate()
    scene.idle(10)
      let multiblock = util.select.fromTo([1,1,1], [4,21,4])
      let direction = Direction.EAST
    
    //part 1
    let pointVec = [2.0, 10, 2.0]
    scene.world.showSection(multiblock, direction)
    scene.idleSeconds(1)
    
    scene
      .text(60, "This is the Thermal Evaporation Plant.", pointVec)
      .colored(PonderPalette.BLUE)
      .placeNearTarget()
    scene.idle(70)

    scene
      .text(80, "It turns water into brine or brine into lithium through heat.", pointVec)
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
    layeredBuildGuide(scene, util, 18, direction, 3, layerText, [[3,17]])

    //part 3
    scene.text(80, "The Thermal Evaporation Plant can only go 18 blocks tall, as it's base must be 4x4.").colored(PonderPalette.BLUE)
    scene.idle(90)
    
    scene.text(80, "The solar panels at the top serve as the heating element, but any heat source will work.").colored(PonderPalette.BLUE)
    scene.idle(90)    

    scene.text(80, "The controller can replace any 'glass' block.").colored(PonderPalette.BLUE)
    scene.idle(90)
  })

  //dynamic tank
  event.create("mekanism:dynamic_valve").tag('kubejs:multiblocks', "kubejs:mekanism_multiblock")
  .scene("dynamic_tank_scene", "How to build the Dynamic Tank", "kubejs:tank6_ponder", (scene, util) => {
    scene.scaleSceneView(0.7)
    scene.setSceneOffsetY(-2.5)
    scene.showBasePlate()
    scene.idle(10)
      let multiblock = util.select.fromTo([1,1,1], [6,6,6])
      let direction = Direction.EAST
    
    //part 1
    let pointVec = [2.0, 3.0, 2.0]
    scene.world.showSection(multiblock, direction)
    scene.idleSeconds(1)
    
    scene
      .text(60, "This is the Dynamic Tank.", pointVec)
      .colored(PonderPalette.BLUE)
      .placeNearTarget()
    scene.idle(70)

    scene
      .text(80, "It can store a massive amount of fluid.", pointVec)
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
    layeredBuildGuide(scene, util, 6, direction, 3, layerText, [[3,5]])
  })

  //induction matrix
  event.create("mekanism:basic_induction_cell").tag('kubejs:multiblocks', "kubejs:mekanism_multiblock")
  .scene("induction_matrix_scene", "How to build the Induction Matrix", "kubejs:matrix6_ponder", (scene, util) => {
    scene.scaleSceneView(0.7)
    scene.setSceneOffsetY(-2.5)
    scene.showBasePlate()
    scene.idle(10)
      let multiblock = util.select.fromTo([1,1,1], [6,6,6])
      let direction = Direction.EAST
    
    //part 1
    let pointVec = [2.0, 3.0, 2.0]
    scene.world.showSection(multiblock, direction)
    scene.world.modifyBlock([2,2,1], (curState) => curState.with("active", "true"), false)
    scene.idleSeconds(1)
    
    scene
      .text(60, "This is the Induction Matrix.", pointVec)
      .colored(PonderPalette.BLUE)
      .placeNearTarget()
    scene.idle(70)

    scene
      .text(80, "It can store a massive amount of energy.", pointVec)
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
    layeredBuildGuide(scene, util, 6, direction, 3, layerText, [[3,4]])

    //part 3
    scene.addKeyframe()
    let input = util.vector.blockSurface([5,2,1], Direction.north)
    let output = util.vector.blockSurface([2,2,1], Direction.north)

    text(scene, 80, "The ports of the Induction Matrix must be configured correctly.", null, false, descriptiveText)
    
    text(scene, 40, "A port can be 'Input',", input, true, descriptiveText)
    
    text(scene, 40, "or 'Output'.", output, true, descriptiveText)
    
      scene.showControls(120, output, "down").rightClick().withItem("mekanism:configurator").whileSneaking()
    text(scene, 80, "You must Shift-Click with a Configurator to swap between these modes.", null, false, descriptiveText, 1)
      scene.world.modifyBlock([2,2,1], (curState) => curState.with("active", "false"), false)
      scene.idle(40)
      scene.world.modifyBlock([2,2,1], (curState) => curState.with("active", "true"), false)
      scene.idle(40)
  })

  //thermoelectric boiler
  event.create("mekanism:superheating_element").tag('kubejs:multiblocks', "kubejs:mekanism_multiblock") 
  .scene("thermoelectric_boiler_scene", "How to build the Thermoelectric Boiler", "kubejs:boiler6_ponder", (scene, util) => {
    scene.scaleSceneView(0.7)
    scene.setSceneOffsetY(-2.5)
    scene.showBasePlate()
    scene.idle(10)
      let multiblock = util.select.fromTo([1,1,1], [6,6,6])
      let direction = Direction.EAST

    //part 1
    let pointVec = [2.0, 3.0, 2.0]
    scene.world.showSection(multiblock, direction)
    scene.idleSeconds(1)
    
    scene
      .text(60, "This is the Thermoelectric Boiler.", pointVec)
      .colored(PonderPalette.BLUE)
      .placeNearTarget()
    scene.idle(70)

    scene
      .text(80, "It turns water into steam.", pointVec)
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
    layeredBuildGuide(scene, util, 6, direction, 3, layerText)

    //part 3
    let inputPort = util.vector.blockSurface([5,2,1], Direction.north)
    let outputSteam = util.vector.blockSurface([3,2,1], Direction.north)
    let outputCoolant = util.vector.blockSurface([2,2,1], Direction.north)

    text(scene, 80, "The ports of the Thermoelectric Boiler must be configured correctly.", null, false, descriptiveText)
    
    text(scene, 40, "A port can be 'Input Only',", inputPort, true, descriptiveText)
    
    text(scene, 40, "'Output Steam',", outputSteam, true, descriptiveText)
    
    text(scene, 40, "or 'Output Coolant'.", outputCoolant, true, descriptiveText)
    
      scene.showControls(120, outputCoolant, "down").rightClick().withItem("mekanism:configurator").whileSneaking()
    text(scene, 80, "You must Shift-Click with a Configurator to swap between these modes.", null, false, descriptiveText, 1)
      scene.world.modifyBlock([2,2,1], (curState) => curState.with("mode", "input"), false)
      scene.idle(40)
      scene.world.modifyBlock([2,2,1], (curState) => curState.with("mode", "output_steam"), false)
      scene.idle(40)
      scene.world.modifyBlock([2,2,1], (curState) => curState.with("mode", "output_coolant"), false)
      scene.idle(40)

    //part 4
    scene.addKeyframe()
      scene.world.setBlock([4,2,0], Block.id("pipez:gas_pipe", {down:true,east:false,has_data:true,north:false,south:true,up:false,waterlogged:false,west:false}), false)
      scene.world.setBlock([5,2,0], Block.id("pipez:gas_pipe", {down:true,east:false,has_data:true,north:false,south:true,up:false,waterlogged:false,west:false}), false)
      scene.world.setBlocks([2,2,0, 3,2,0], Block.id("pipez:gas_pipe", {down:true,east:false,has_data:true,north:false,south:true,up:false,waterlogged:false,west:false}), false)
      scene.world.setBlock([2,1,0], "mekanism:creative_chemical_tank", false)
      scene.world.setBlock([3,1,0], "mekanism:creative_fluid_tank", false)
      scene.world.setBlock([4,1,0], "mekanism:creative_chemical_tank", false)
      scene.world.setBlock([5,1,0], "mekanism:creative_chemical_tank", false)
    
    text(scene, 80, "Superheated Sodium can be inputted and turned back into normal Sodium", null, false, descriptiveText, 1)
    scene.overlay.chaseBoundingBoxOutline(PonderPalette.INPUT, scene, AABB.ofBlock([5,1,0]), 60),
    scene.idle(60)
    scene.overlay.chaseBoundingBoxOutline(PonderPalette.OUTPUT, scene, AABB.ofBlock([2,1,0]), 60)
    scene.idle(40)

  })
  .scene("thermoelectric_boiler_pt5_scene", "Adjusting the Fluid Capacities of the Thermoelectric Boiler", "kubejs:boiler9_ponder", (scene, util) => {
    scene.scaleSceneView(0.5)
    scene.setSceneOffsetY(-2)
    scene.showBasePlate()
    scene.idle(10)
      let multiblock = util.select.fromTo([6,1,1], [14,9,9])
      let direction = Direction.EAST
      let board = util.grid.at(4,2,1)
      let fullBoard = util.select.fromTo(board, [1,1,1])
      let pointVec = util.vector.centerOf(5,5,5)		
      scene.world.setKineticSpeed(fullBoard, 64)
      scene.world.multiplyKineticSpeed(util.grid.at(4, 1, 1), -1)
      scene.world.multiplyKineticSpeed(util.grid.at(3, 2, 1), -1)
      scene.world.multiplyKineticSpeed(util.grid.at(2, 1, 1), -1)
      scene.world.multiplyKineticSpeed(util.grid.at(1, 2, 1), -1)

    //part 5
    scene.world.showSection(multiblock, direction)
    scene.idleSeconds(1)

    text(scene, 60, "The Superheating Elements must be underneath the Pressure Dispersers.", pointVec, true, descriptiveText)

    text(scene, 80, "The Pressure Dispersers must form a single uniform layer of the multiblock,", null, false, descriptiveText)

      scene.world.hideSection([14,1,1, 6,9,1], Direction.NORTH)
      scene.world.showSection([5,3,2], Direction.EAST)
      scene.world.showSection(util.select.fromTo(board, [1,1,1]), Direction.DOWN)
      scene.idle(15)
      scene.world.showSection([1,3,1], Direction.DOWN)
    text(scene, 80, "but the layer can be moved to change the water and steam storage amounts.", null, false, descriptiveText, 30)
      scene.world.setDisplayBoardText(board, 0, "Water: 6,992,000 mB")
      scene.world.setDisplayBoardText(board, 1, "Steam: 25,920,000 mB")
      scene.world.setDisplayBoardText(board, 2, "Rate: 15,680,000 mB")

    const showTextOnBoard = (maxWater, maxSteam, boilCapacity, y) => {
      if(maxWater) scene.world.setDisplayBoardText(board, 0, maxWater[y])
      if(maxSteam) scene.world.setDisplayBoardText(board, 1, maxSteam[y])
      if(boilCapacity) scene.world.setDisplayBoardText(board, 2, boilCapacity[y])
    }

    const pressureDisperserShift = () => {
    let bottomY = 3
    let topY = 8
    let maxWater = [null, null, null, "Water: 1,808,000 mB", "Water: 3,104,000 mB", "Water: 4,400,000 mB", "Water: 5,696,000 mB", "Water: 6,992,000 mB", "Water: 8,288,000 mB"]
    let maxSteam = [null, null, null, "Steam: 77,760,000 mB", "Steam: 64,800,000 mB", "Steam: 51,840,000 mB", "Steam: 38,880,000 mB", "Steam: 25,920,000 mB", "Steam: 12,960,000 mB"]
    let boilCapacity = null
    let startLayer = 7
    let layerToBeShifted = [13,7,2, 7,7,8]
    let shiftingLayer = scene.world.makeSectionIndependent(layerToBeShifted)
    let y;
      for(y = startLayer; y > bottomY; y--) {
        showTextOnBoard(maxWater, maxSteam, boilCapacity, y)
        scene.idle(30)
        scene.world.moveSection(shiftingLayer, [0,-1,0], 0)
      }
        showTextOnBoard(maxWater, maxSteam, boilCapacity, y)
        scene.idle(20)
      for(y; y < topY; y++) {
        showTextOnBoard(maxWater, maxSteam, boilCapacity, y)
        scene.idle(30)
        scene.world.moveSection(shiftingLayer, [0,1,0], 0)
      }
        showTextOnBoard(maxWater, maxSteam, boilCapacity, y)
        scene.idle(20)
      for (y; y > startLayer; y--) {
        showTextOnBoard(maxWater, maxSteam, boilCapacity, y)
        scene.idle(30)
        scene.world.moveSection(shiftingLayer, [0,-1,0], 0)
      }
        showTextOnBoard(maxWater, maxSteam, boilCapacity, y)
    }
    pressureDisperserShift()
    
    scene.addKeyframe()
    text(scene, 80, "Changing the height of the Superheating Elements won't affect anything.", null, false, descriptiveText, 30)

    const superheatingElementShift = () => {
      let bottomY = 2
      let topY = 6
      let startLayer = 2
      let layerToBeShifted = [13,2,2, 7,2,8]
      let shiftingLayer = scene.world.makeSectionIndependent(layerToBeShifted)
      let y;
        for(y = startLayer; y < topY; y++) {
          scene.idle(10)
          scene.world.moveSection(shiftingLayer, [0,1,0], 0)
        }
          scene.idle(10)
        for(y; y > bottomY; y--) {
          scene.idle(10)
          scene.world.moveSection(shiftingLayer, [0,-1,0], 0)
        }
          scene.idle(10)
    }
    superheatingElementShift()
  })
  .scene("thermoelectric_boiler_pt6_scene", "Adjusting the Boiling Capacity of the Thermoelectric Boiler", "kubejs:boiler9_full_ponder", (scene, util) => {
    scene.scaleSceneView(0.5)
    scene.setSceneOffsetY(-2)
    scene.showBasePlate()
    scene.idle(10)
      let multiblock = util.select.fromTo([1,1,1], [14,9,9])
      let direction = Direction.EAST
      let board = util.grid.at(4,2,1)
      let fullBoard = util.select.fromTo(board, [1,1,1])
      scene.world.setKineticSpeed(fullBoard, 64)
      scene.world.multiplyKineticSpeed(util.grid.at(4, 1, 1), -1)
      scene.world.multiplyKineticSpeed(util.grid.at(3, 2, 1), -1)
      scene.world.multiplyKineticSpeed(util.grid.at(2, 1, 1), -1)
      scene.world.multiplyKineticSpeed(util.grid.at(1, 2, 1), -1)
      scene.world.setDisplayBoardText(board, 0, "Water: 6,992,000 mB")
      scene.world.setDisplayBoardText(board, 1, "Steam: 25,920,000 mB")
      scene.world.setDisplayBoardText(board, 2, "Rate: 15,680,000 mB")
    
      scene.world.showSection(multiblock.substract([13,3,2, 7,6,8]), direction)
      scene.idle(15)

    //part 6
    scene.world.hideSection([14,1,1, 6,9,1], Direction.NORTH)
    text(scene, 80, "Adding more Superheaters will increase boil capacity.", null, false, descriptiveText, 30)

    const showTextOnBoard = (maxWater, maxSteam, boilCapacity, y) => {
      if(maxWater) scene.world.setDisplayBoardText(board, 0, maxWater[y])
      if(maxSteam) scene.world.setDisplayBoardText(board, 1, maxSteam[y])
      if(boilCapacity) scene.world.setDisplayBoardText(board, 2, boilCapacity[y])
    }

    const superheatingElementStack = () => {
      let bottomY = 2
      let topY = 6
      let startLayer = 2
      let maxWater = [null, null, "Water: 6,992,000 mB", "Water: 6,208,000 mB", "Water: 5,424,000 mB", "Water: 4,640,000 mB", "Water: 3,856,000 mB"]
      let maxSteam = null
      let boilCapacity = [null, null, "Rate: 15,680,000 mB", "Rate: 31,360,000 mB", "Rate: 47,040,000 mB", "Rate: 62,720,000 mB", "Rate: 78,400,000 mB"]
      let y;
        for(y = startLayer; y < topY; y++) {
          showTextOnBoard(maxWater, maxSteam, boilCapacity, y)
          scene.idle(30)
          scene.world.showSection([13,y+1,2, 7,y+1,8], null)
        }
          showTextOnBoard(maxWater, maxSteam, boilCapacity, y)
          scene.idle(20)
        for(y; y > bottomY; y--) {
          showTextOnBoard(maxWater, maxSteam, boilCapacity, y)
          scene.idle(30)
          scene.world.hideSection([13,y,2, 7,y,8], null)
        }
          showTextOnBoard(maxWater, maxSteam, boilCapacity, y)
          scene.idle(20)
    }
    superheatingElementStack()

    text(scene, 80, "Note that Display Links do not work on Mekanism Multiblocks.", null, false, PonderPalette.RED, 30)
  })

  //turbine
  event.create("mekanismgenerators:turbine_blade").tag('kubejs:multiblocks', "kubejs:mekanism_multiblock")
    .scene("turbine_scene", "How to build the Turbine", "kubejs:turbine9_ponder", (scene, util) => {
    scene.scaleSceneView(0.6)
    scene.setSceneOffsetY(-2)
    scene.showBasePlate()
    scene.idle(10)
      let multiblock = util.select.fromTo([1,1,1], [9,9,9])
      let direction = Direction.EAST
    
    //part 1
    let pointVec = util.vector.centerOf(5,5,5)
    scene.world.showSection(multiblock, direction)
    scene.idleSeconds(1)
    
    scene
      .text(60, "This is the Turbine.", pointVec)
      .colored(PonderPalette.BLUE)
      .placeNearTarget()
    scene.idle(70)

    scene
      .text(80, "It turns Steam into energy.", pointVec)
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
    layeredBuildGuide(scene, util, 9, direction, 3, layerText, [[3,6]])

    //part 3
    text(scene, 80, "The Turbine Vents can be hooked up to a pipe to recycle water.", util.vector.topOf(5,9,5), false, descriptiveText)

    text(scene, 80, "The main way to optimise the Turbine is to add more blades.", util.vector.topOf(5,4,5), false, descriptiveText)
    
    text(scene, 80, "Check the statistics panel of the Turbine to know wat to optimise.", null, false, descriptiveText)
    })

  //fission reactor
  event.create("mekanismgenerators:control_rod_assembly").tag('kubejs:multiblocks', "kubejs:mekanism_multiblock")
  .scene("fission_reactor_scene", "How to build the Fission Reactor", "kubejs:fission7_ponder", (scene, util) => {
    scene.scaleSceneView(0.7)
    scene.setSceneOffsetY(-2.5)
    scene.showBasePlate()
    scene.idle(10)
      let multiblock = util.select.fromTo([1,1,1], [7,7,7])
      let direction = Direction.EAST
    
    //part 1
    let pointVec = util.vector.centerOf(3,3,3)
    scene.world.showSection(multiblock, direction)
    scene.idleSeconds(1)
    
    scene
      .text(60, "This is the Fission Reactor.", pointVec)
      .colored(PonderPalette.BLUE)
      .placeNearTarget()
    scene.idle(70)

    scene
      .text(100, "It uses Fissile Fuel to make Steam or Superheated Sodium, but most importantly, Nuclear Waste.", pointVec)
      .colored(PonderPalette.BLUE)
      .placeNearTarget()
    scene.idle(110)

    scene
      .text(80, "Here's a layered guide to build it.", pointVec)
      .colored(PonderPalette.BLUE)
      .placeNearTarget()
    scene.idle(90)

    scene.world.hideSection(multiblock, direction)
    scene.idleSeconds(1)
    
    //part 2
    layeredBuildGuide(scene, util, 7, direction, 3, layerText, [[3,5]])

    //part 3
    scene.addKeyframe()
    let input = util.vector.blockSurface([5,2,1], Direction.north)
    let outputWaste = util.vector.blockSurface([3,2,1], Direction.north)
    let outputCoolant = util.vector.blockSurface([2,2,1], Direction.north)

    text(scene, 80, "The ports of the Fission Reactor must be configured correctly.", null, false, descriptiveText)
    
    text(scene, 40, "A port can be 'Input',", input, true, descriptiveText)

    text(scene, 40, "'Output Waste'.", outputWaste, true, descriptiveText)
    
    text(scene, 40, "or 'Output Coolant'.", outputCoolant, true, descriptiveText)
    
      scene.showControls(120, outputCoolant, "down").rightClick().withItem("mekanism:configurator").whileSneaking()
    text(scene, 80, "You must Shift-Click with a Configurator to swap between these modes.", null, false, descriptiveText, 1)
      scene.world.modifyBlock([2,2,1], (curState) => curState.with("mode", "input"), false)
      scene.idle(40)
      scene.world.modifyBlock([2,2,1], (curState) => curState.with("mode", "output_waste"), false)
      scene.idle(40)
      scene.world.modifyBlock([2,2,1], (curState) => curState.with("mode", "output_coolant"), false)
      scene.idle(40)

    scene.addKeyframe()
    text(scene, 80, "Do not let the Reactor get too hot, or it will explode!", null, false, PonderPalette.RED)
  })

  //fusion reactor
  event.create("mekanismgenerators:fusion_reactor_controller").tag('kubejs:multiblocks', "kubejs:mekanism_multiblock")
  .scene("fusion_reactor_scene", "How to build the Fusion Reactor", "kubejs:fusion5_laser_ponder", (scene, util) => {
    scene.scaleSceneView(0.7)
    scene.setSceneOffsetY(-1.5)
    scene.showBasePlate()
    scene.idle(10)
      let multiblock = util.select.fromTo([6,1,5], [10,5,1])
      let direction = Direction.EAST
    
    //part 1
    let pointVec = util.vector.centerOf(8,3,3)
    scene.world.showSection(multiblock, direction)
    scene.world.modifyBlock([5,1,2], (curState) => curState.with("active", "true"), false)
    scene.idleSeconds(1)
    
    scene
      .text(60, "This is the Fusion Reactor.", pointVec)
      .colored(PonderPalette.BLUE)
      .placeNearTarget()
    scene.idle(70)

    scene
      .text(80, "It generates energy by fusing Deuterium and Tritium.", pointVec)
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
    for(let y = 1; y <= 5; y++) {
      scene.world.showSection(util.select.fromTo([10,y,1], [6,y,5]), direction)
      scene.overlay.showText(30)
        .text(`Layer ${y}`)
        .colored(layerText)
        .attachKeyFrame()
      scene.idleSeconds(3)
    }

    //part 3
    scene.addKeyframe()
    let input = util.vector.blockSurface([7,3,1], Direction.north)
    let output = util.vector.blockSurface([6,2,3], Direction.west)

    text(scene, 80, "The ports of the Fusion Reactor must be configured correctly.", null, false, descriptiveText)
    
    text(scene, 40, "A port can be 'Input',", input, true, descriptiveText)
    
    text(scene, 40, "or 'Output'.", output, true, descriptiveText)
    
      scene.showControls(70, output, "down").rightClick().withItem("mekanism:configurator").whileSneaking()
    text(scene, 80, "You must Shift-Click with a Configurator to swap between these modes.", null, false, descriptiveText, 1)
      scene.world.modifyBlock([6,2,3], (curState) => curState.with("active", "false"), false)
      scene.idle(40)
      scene.world.modifyBlock([6,2,3], (curState) => curState.with("active", "true"), false)
      scene.idle(40)

    //part 4
    scene.addKeyframe()
    scene.world.showSection([0,5,5, 5,1,0], direction)
    
    text(scene, 80, "1 billion FE devilered by laser is required to ignite the fusion process.", null, false, descriptiveText)

    text(scene, 80, "The laser must enter by the Laser focus Matrix.", util.vector.blockSurface([6,3,3], Direction.west), false, descriptiveText)

    text(scene, 80, "A hohlraum filled with D-T Fuel is reqired to start the fusion process.", util.vector.blockSurface([8,5,3], Direction.up), true, descriptiveText)

      scene.world.showSection([7,3,0, 9,1,0], Direction.south)
      scene.overlay.chaseBoundingBoxOutline(PonderPalette.INPUT, scene, AABB.ofBlocks([8,1,0], [6,3,0]).expandTowards(2,0,0), 80)
    text(scene, 80, "Deuterium and Tritium must continuously be supplied to the Reactor or you will have to reignite it.", null, true, descriptiveText)

    text(scene, 80, "With this setup, you can now ignite the Fusion Reactor!", null, true, descriptiveText, 30)
      scene.world.setBlock([5,3,3], Block.id("minecraft:red_stained_glass_pane", {east:true,north:false,south:false,waterlogged:false,west:true}), false)
      scene.world.modifyBlock([4,2,1], (curState) => curState.with("power", "15"), false)
      scene.world.modifyBlock([4,3,2], (curState) => curState.with("power", "14"), false)
      scene.world.modifyBlock([4,2,0], Block.id("minecraft:lever", {face:"floor",facing:"south",powered:true}), false)
      scene.world.modifyBlockEntityNBT([5,3,3], (nbt) => {
        console.log(nbt)
      })
      scene.world.modifyBlockEntityNBT([4,3,3], (nbt) => {
        console.log(nbt)
      })
    scene.idle(20)

      scene.world.setBlock([5,3,3], "minecraft:air", false)
      scene.world.modifyBlock([4,2,1], (curState) => curState.with("power", "0"), false)
      scene.world.modifyBlock([4,3,2], (curState) => curState.with("power", "0"), false)
      scene.world.modifyBlock([4,2,0], Block.id("minecraft:lever", {face:"floor",facing:"south",powered:false}), false)
  })

  //sps
  event.create("mekanism:supercharged_coil").tag('kubejs:multiblocks', "kubejs:mekanism_multiblock")
  .scene("sps_scene", "How to build the Supercritical Phase Shifter", "kubejs:sps7_off_ponder", (scene, util) => {
    scene.scaleSceneView(0.7)
    scene.setSceneOffsetY(-2.5)
    scene.showBasePlate()
    scene.idle(10)
      let multiblock = util.select.fromTo([1,1,1], [7,7,7])
      let direction = Direction.EAST
    
    //part 1
    let pointVec = [2.0, 3.0, 2.0]
    scene.world.showSection(multiblock, direction)
    scene.world.modifyBlock([3,2,1], (curState) => curState.with("active", "true"), false)
    scene.idleSeconds(1)
    
    scene
      .text(60, "This is the Supercritical Phase Shifter (or SPS for short).", pointVec)
      .colored(PonderPalette.BLUE)
      .placeNearTarget()
    scene.idle(70)

    scene
      .text(80, "It turns Polonium into antimatter.", pointVec)
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
    for(let y = 1; y <= 7; y++) {
      scene.world.showSection(util.select.fromTo([1,y,1], [7,y,7]), direction)
      scene.overlay.showText(30)
        .text(`Layer ${y}`)
        .colored(layerText)
        .attachKeyFrame()
      scene.idleSeconds(3)
    }

    //part 3
    scene.addKeyframe()
    let input = util.vector.blockSurface([5,2,1], Direction.north)
    let output = util.vector.blockSurface([3,2,1], Direction.north)

    text(scene, 80, "The ports of the SPS must be configured correctly.", null, false, descriptiveText)
    
    text(scene, 40, "A port can be 'Input',", input, true, descriptiveText)
    
    text(scene, 40, "or 'Output'.", output, true, descriptiveText)
    
      scene.showControls(80, output, "down").rightClick().withItem("mekanism:configurator").whileSneaking()
    text(scene, 80, "You must Shift-Click with a Configurator to swap between these modes.", null, false, descriptiveText, 1)
      scene.world.modifyBlock([3,2,1], (curState) => curState.with("active", "false"), false)
      scene.idle(40)
      scene.world.modifyBlock([3,2,1], (curState) => curState.with("active", "true"), false)
      scene.idle(40)

    //part 4
    scene.addKeyframe()
    
    scene.world.showSection(util.select.fromTo([0,1,0], [8,8,8]).substract(multiblock), Direction.down)
    scene.overlay.chaseBoundingBoxOutline(PonderPalette.INPUT, scene, AABB.ofBlock([4,4,2]), 80)
    text(scene, 80, "The coils must be powered to make the machine work.", null, false, descriptiveText)
  })
})
  



/**
 * 
 * @param {Internal.ExtendedSceneBuilder} scene Just leave it as scene.
 * @param {Internal.SceneBuildingUtilDelegate} util Just leave it as util.
 * @param {number} height Height of the multiblock.
 * @param {Internal.Direction_} direction The slide in direction, formatted as `Direction.{direction}`.
 * @param {number} idleSeconds The number of seconds before switching to the next layer.
 * @param {PonderPalette_} textColor The color of the text, formatted as `PonderPalette.{insert color}`.
 * @param {number[][]} skipLayerMap A double array of what layers to group together, where the 'key' is the bottom layer and the 'value' is the top layer.
 */

function layeredBuildGuide(scene, util, height, direction, idleSeconds, textColor, skipLayerMap) {
  for(let y = 1; y <= height; y++) {
    if(skipLayerMap) {
      skipLayerMap.forEach(skipPair => {
        let bottomLayer = skipPair[0]
        let topLayer = skipPair[1]
        if(y == bottomLayer) {
          scene.world.showSection(util.select.layers(bottomLayer, topLayer - bottomLayer + 1), direction)
          scene.overlay.showText(idleSeconds * 10)
            .text(`Layers ${bottomLayer} to ${topLayer}`)
            .attachKeyFrame()
            .colored(textColor)
          y = topLayer
          scene.idleSeconds(idleSeconds)
        } else {
          scene.world.showSection(util.select.layer(y), direction)
          scene.overlay.showText(idleSeconds * 10)
            .text(`Layer ${y}`)
            .colored(textColor)
            .attachKeyFrame()
          scene.idleSeconds(idleSeconds)
        }
      })
    } else {
      scene.world.showSection(util.select.layer(y), direction)
      scene.overlay.showText(idleSeconds * 10)
        .text(`Layer ${y}`)
        .colored(textColor)
        .attachKeyFrame()
      scene.idleSeconds(idleSeconds)
    }
  }
}
/**
 * 
 * @param {Internal.ExtendedSceneBuilder} scene Just leave it as scene.
 * @param {number} duration The amount of time the text should be on screen
 * @param {string} text The text to display
 * @param {Internal.Vec3d} pointVector Where the text will point to. 
 * @param {boolean} placeNearTarget If the text should be near the target.
 * @param {PonderPalette_} textColor The color of the text, formatted as `PonderPalette.{insert color}`.
 * @param {number} idle The number of ticks before switching to the next instruction.
 */

function text(scene, duration, text, pointVector, placeNearTarget, textColor, idle){
  if(placeNearTarget) {
    scene
      .text(duration-10, text, pointVector)
      .colored(textColor)
      .placeNearTarget()
  } else {
    scene
      .text(duration-10, text, pointVector)
      .colored(textColor)
  }
  if(idle) scene.idle(idle)
  else scene.idle(duration)
}