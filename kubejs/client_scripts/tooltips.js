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
const $ItemDescription = Java.loadClass("com.simibubi.create.foundation.item.ItemDescription$Modifier")
const $TooltipModifier = Java.loadClass("com.simibubi.create.foundation.item.TooltipModifier")
const $Palette = Java.loadClass("com.simibubi.create.foundation.item.TooltipHelper$Palette")

ItemEvents.tooltip((e) => {
  e.addAdvanced('mekanism:steel_casing', (block, isAdvanced, text) => {
    text.remove(1)
  });
});

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
    createTooltip("minecraft:beacon")
      .addSummary("Create Beneficial Effects for Nearby Players!") 
      .addBehaviour(["When Placed on a Block Pyramid", "It Shoots a Beam of Light Into the Sky."])
      .addBehaviour(["When Interacted With", "Opens a GUI allowing the Activation of _Beneficial Abilities_."]) 
      .setPalette($Palette.ofColors(Color.AQUA, Color.DARK_AQUA))
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