Ponder.registry(event => {
  let descriptiveText = PonderPalette.BLUE
  let layerText = PonderPalette.RED

  //thermoelectric boiler
  event.create("rats:tangled_rat_tails")
  .scene("rat_king_summon", "How to Summon the Rat King", "kubejs:rat_king_offering", (scene, util) => {
    scene.scaleSceneView(0.7)
    scene.setSceneOffsetY(-2.5)
    scene.showBasePlate()
    scene.idle(10)
      let monument = util.select.fromTo([5,1,5], [7,5,7])
      let cheese = util.select.fromTo([3,1,3], [9,1,9])
      let direction = Direction.EAST

    //part 1
    scene.idleSeconds(1)
    
    text(scene, 90, "To get Tangled Tails, you must lure out the Rat King and slay him.", null, false, descriptiveText)

    text(scene, 100, "This task requires two things: An offering, and a lot of rats.", null , false, descriptiveText)

    scene.addKeyframe()
    text(scene, 100, "First, place a layer of cheese garnished with shiny block (exactly like this).", util.vector.centerOf(6,3,6), false, descriptiveText, 10)
      let link = scene.world.showIndependentSection(monument, direction)
      scene.world.showSection(cheese, direction)
      scene.idle(90)

    scene.addKeyframe()
    text(scene, 100, "§rThen, §4summon§r aurond 20 rats or something near the offering.", null, false, descriptiveText, 10)
      let /**@type {Internal.ElementLink<Internal.EntityElement>[]} */ ratArray = [] 
      for(let count = 0; count < 17; count++) { 
        let rat = scene.world.createEntity("rats:rat", [Utils.random.nextInt(1, 12)-0.5, 1, Utils.random.nextInt(1, 12)-0.5])
        ratArray.push(rat)
        scene.world.modifyEntity(rat, entity => {
          fallOnBlock(scene, util, entity)
          entity.lookAt('eyes', util.vector.centerOf(6,5,6))
        })
      }
      scene.idle(90)

    scene.addKeyframe()
    text(scene, 100, "Finally, if all of the rats are within range, the Rat King will appear and steal your offering!", null, false, descriptiveText, 10)
      ratArray.forEach(rat => {
        scene.world.modifyEntity(rat, entity => {
          entity.discard()
        })
      })
      scene.world.hideIndependentSectionImmediately(link)
      scene.idle(10)
      let rat_king = scene.world.createEntity('rats:rat_king', [6.5,2,6.5])
    scene.idleSeconds(1)
  })
})

/**
 * 
 * @param {Internal.ExtendedSceneBuilder} scene Just leave it as scene.
 * @param {Internal.SceneBuildingUtilDelegate} util Just leave it as util.
 * @param {Internal.Entity} entity
 */

let fallOnBlock = (scene, util, entity) => {
  let x = entity.pos.x()
  let y = entity.pos.y()
  let z = entity.pos.z()
  for(let i = 1; i < 6; i++)
    switch (i) {
      case 1:
    console.log("1", x, y, z)
        if(x>3 && x<9 && z>3 && z<9) y++
        break;
      case 2:
      case 3:
    console.log("2/3", x, y, z)
        if((x>5 && x<7 && z == 6) || (x==6 && z>5 && z<7)) y++
        break;
      case 4:
      case 5:
    console.log("4/5", x, y, z)
        if(x==6 && z==6) y++
        break;
    } 
  entity.moveTo([x, y, z])
    console.log(x, y, z)
}