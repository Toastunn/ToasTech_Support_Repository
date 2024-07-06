/*
  Supported Default palettes

  STANDARD_CREATE
  ---
  BLUE
  GREEN
  YELLOW
  RED
  PURPLE
  GRAY
  ---
  ALL_GRAY
  GRAY_AND_BLUE
  GRAY_AND_WHITE
  GRAY_AND_GOLD
  GRAY_AND_RED
  ---
*/

//for non create tooltips (aka they dont have hold [shift] for summary)
ItemEvents.tooltip((e) => {
  e.addAdvanced('mekanism:steel_casing', (block, isAdvanced, text) => {
    text.remove(1)
  });
  e.addAdvanced('kubejs:infinite_chassis', (block, isAdvanced, text) => {
    text.add(1, [Text.of('§fServes no purpose outside the assembly line.')])
  })
  e.addAdvanced('kubejs:ingots_of_steel_2', (item, isAdvanced, text) => {
    text.add(2, [Text.of('§7Sequence Chain')])
    text.add(3, [Text.of('§8Step: 3/3')])
    text.add(4, [Text.of('§bNext: Spout Fire Water')])
  })
  e.addAdvanced('kubejs:ingots_of_steel_1', (item, isAdvanced, text) => {
    text.add(2, [Text.of('§7Sequence Chain')])
    text.add(3, [Text.of('§8Step: 2/3')])
    text.add(4, [Text.of('§bNext: The Great Pressing')])
    text.add(5, [Text.of('§3-> Spout Fire Water')])
  })
  e.addAdvanced('kubejs:fan_void_catalyst', (item, isAdvanced, text) => {
    text.add(1, [Text.of('Does not function as a Fan Catalyst')])
  })
  e.addAdvanced('kubejs:wand_of_recall', (item, isAdvanced, text) => {
    let mode = item.nbt.getString('mode')
    text.add(1, [Text.yellow('Mode: ').append(Text.aqua(mode))])
    })
  e.addAdvanced('kubejs:limbo_steel', (item, isAdvanced, text) => {
    text.add(1, [Text.gray('§oWhen metal lies on the line between reality and infinity.')])
    text.add(2, [Text.darkRed('May serve no purpose outside the assembly line...')])
  })
  e.addAdvanced("blocksyouneed_luna:bitumen", (item, isAdvanced, text) => {
    text.add(1, [Text.gray('§oDrops from Asphalt Pitch')])
  })
  e.addAdvanced('createchromaticreturn:antiplite_charm', (item, isAdvanced, text) => {
    text.remove(1)
    text.remove(4)
    text.add(1, [Text.red('Charm Gem Type: Antiplite')])
    text.add(5, [Text.darkRed('Note: Has negative effects unless user has a '), Text.lightPurple('Multiplite Charm')])
    text.add(6, [Text.darkRed('Negative effects will not be removed in the Curios Charm Slot')])
  })
  e.addAdvanced('createchromaticreturn:multiplite_charm', (item, isAdvanced, text) => {
    text.remove(4)
    text.add(4, [Text.darkPurple('Note: Has negative effects unless user has an '), Text.red('Antiplite Charm')])
    text.add(5, [Text.darkRed('Negative effects will not be removed in the Curios Charm Slot')])
  })
  e.addAdvanced('createchromaticreturn:bedrock_charm_base', (item, isAdvanced, text) => {
    text.remove(1)
    text.remove(2)
    text.remove(3)
  });
  e.addAdvanced('createchromaticreturn:bedrock_charm_base', (item, isAdvanced, text) => {
    text.remove(1)
  });
  e.addAdvanced('createchromaticreturn:bedrock_charm_base', (item, isAdvanced, text) => {
    text.remove(1)
  });
  // cut this out when release
  e.addAdvanced(Ingredient.all, (item, advanced, text) => {
    if (e.alt && item.nbt && advanced) {
      text.add(Text.of('NBT: ').append(Text.prettyPrintNbt(item.nbt)))
    }
  })
});

//for create tooltips (aka they do have hold [shift] for summary)
ClientEvents.lang("en_us", (event) => {
  /*
  event.addAll( // use for every item!
   createTooltip("modid:itemid") // works with modded items!
   .addSummary("Insert summary") underline to use secondary color
   .addBehaviour(["When this", "Then this item does _this_."])
   .addBehaviour(["And When this", "You can add as many _behaviours_ as you like"])
   .addAction(["This is the control1", "This is the _action1_"])
   .addAction(["This is the control2", "This is the _action2_"])
   .setPalette($Palette.YELLOW) optional, default is $Palette.STANDARD_CREATE, custom can be like: .setPalette($Palette.ofColors(Color.AQUA, Color.DARK_AQUA))
   .build()
  */
  event.addAll(
    createTooltip('ae2:facade')
      .addSummary("Facades can be crafted using any block, but the Infinity Block Facade is the only one that will show up in JEI.")
      .build()
  )
  event.addAll(
    createTooltip("minecraft:amethyst_cluster")
      .addSummary("A very reflective surface.")
      .addBehaviour(["When placed in the path of a beacon beam,", "It will _redirect the beam_ in the direction it's facing. Make sure the _beam_ ends up pointing to the sky. Don't cross the beams."])
      .setPalette($Palette.ofColors(Color.AQUA, Color.WHITE))
      .build()
  )
  event.addAll(
    createTooltip("ae2:quartz_cluster")
    .addSummary("A very reflective surface.")
    .addBehaviour(["When placed in the path of a beacon beam,", "It will _redirect the beam_ in the direction it's facing. Make sure the _beam_ ends up pointing to the sky. Don't cross the beams."])
    .setPalette($Palette.ofColors(Color.AQUA, Color.WHITE))
    .build()
  )
  event.addAll(
    createTooltip("biomesoplenty:rose_quartz_cluster")
    .addSummary("A very reflective surface.")
    .addBehaviour(["When placed in the path of a beacon beam,", "It will _redirect the beam_ in the direction it's facing. Make sure the _beam_ ends up pointing to the sky. Don't cross the beams."])
    .setPalette($Palette.ofColors(Color.AQUA, Color.WHITE))
    .build()
  )
  event.addAll(
    createTooltip("mekanism:steel_casing")
    .addSummary("A Strong Casing for Strong Machines")
    .setPalette($Palette.PURPLE)
    .build()
  )
  event.addAll(
    createTooltip("enderio:yeta_wrench")
    .addSummary("The Yeta Wrench is a tool that has a lot of uses: Conduit Facades are hidden while the Yeta Wrench is held.")
    .addAction(["When Shift + Right Clicking with the Yeta Wrench,", "Machines and Conduits can be broken."])
    .addAction(["When Right Clicking with the Yeta Wrench on a Conduit Bundle", "Extract and Insert(or Input and Output) modes can be changed."])
    .addAction(["When Right Clicking with the Yeta Wrench on the connection", "Conduits can be disconnected."])
    .addAction(["When scrolling through the display menu with Shift + Mouse Wheel or with Y,", "Different Types of Conduits and Facades can be Hidden"]) 
    .addAction(["When the display menu is set to Facade,", "The Facades are shown and can be removed by Shift + Right Clicking with the Yeta Wrench."])
    .setPalette($Palette.STANDARD_CREATE)
    .build()
  )
})
function createTooltip(/** @type {Special.Item} */ itemId){
  return new CreateTooltipBuilder(itemId)
}

function CreateTooltipBuilder(itemId) {
  this.itemId = Item.of(itemId).idLocation
  this.descriptionId = Item.of(itemId).descriptionId
  this.summary = ""
  this.conditions = []
  this.behaviours = []
  this.controls = []
  this.actions = []
  this.palette = $Palette.STANDARD_CREATE
}
CreateTooltipBuilder.prototype = {
  addSummary: function (/**@type {string} */ summary) {
    this.summary = summary
    return this
  },
  addBehaviour: function (/**@type {string[]} */ conditionAndBehaviour) {
    this.conditions.push(conditionAndBehaviour[0])
    this.behaviours.push(conditionAndBehaviour[1])
    return this
  },
  addAction: function (/**@type {string[]} */ controlsAndActions) {
    this.controls.push(controlsAndActions[0])
    this.actions.push(controlsAndActions[1])
    return this
  },
  setPalette: function (/**@type {Internal.TooltipHelper$Palette} */ palette) {
    this.palette = palette
    return this
  },
  build: function () {
    $TooltipModifier.REGISTRY.registerDeferred(this.itemId, (item) => new $ItemDescription(item, this.palette))
    let map = Utils.newMap()
    map.putIfAbsent(this.descriptionId + ".tooltip", this.itemId.path.toUpperCase())
    if (this.summary != "") {
      map.putIfAbsent(this.descriptionId + ".tooltip.summary", this.summary)
    }
    for (let index = 0; index < this.conditions.length; index++) {
      map.putIfAbsent(this.descriptionId + ".tooltip.condition" + (index + 1), this.conditions[index])
    }
    for (let index = 0; index < this.behaviours.length; index++) {
      map.putIfAbsent(this.descriptionId + ".tooltip.behaviour" + (index + 1), this.behaviours[index])
    }
    for (let index = 0; index < this.controls.length; index++) {
      map.putIfAbsent(this.descriptionId + ".tooltip.control" + (index + 1), this.controls[index])
    }
    for (let index = 0; index < this.actions.length; index++) {
      map.putIfAbsent(this.descriptionId + ".tooltip.action" + (index + 1), this.actions[index])
    }
    return map
  }
}