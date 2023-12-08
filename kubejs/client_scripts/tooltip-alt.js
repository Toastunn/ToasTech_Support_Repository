const $ItemDescription = Java.loadClass("com.simibubi.create.foundation.item.ItemDescription$Modifier")
const $TooltipModifier = Java.loadClass("com.simibubi.create.foundation.item.TooltipModifier")
const $Palette = Java.loadClass("com.simibubi.create.foundation.item.TooltipHelper$Palette")

ClientEvents.lang("en_us", (event) => {
  event.addAll( // use for every item!
    createTooltip("minecraft:beacon")
      .addSummary("Create Beneficial Effects for Nearby Players!") 
      .addBehaviour(["When Placed on a Block Pyramid", "It Shoots a Beam of Light Into the Sky."]) // add as many as you want.
      .addBehaviour(["When Interacted With", "Opens a GUI allowing the Activation of _Beneficial Abilities_."]) 
      //.addAction(["This is the control1", "This is the _action1_"]) use as manny times as you want. 
      .setPalette($Palette.ofColors(Color.AQUA, Color.DARK_AQUA)) // optional, default is $Palette.STANDARD_CREATE, custom can be like: .setPalette($Palette.ofColors(Color.AQUA, Color.DARK_AQUA))
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