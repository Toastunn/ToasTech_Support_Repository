// Define the path to the JSON file
const jsonFilePath = 'kubejs/config/tooltips.json'; //this can be updated using the python script to grab the wiki

// Read the JSON content using JsonIO
let jsonContent = JsonIO.read(jsonFilePath);

// Check if the content is not null (indicating successful reading)
if (jsonContent !== null && jsonContent.tooltips) {
    // Iterate through each entry in the JSON array
    jsonContent.tooltips.forEach(function (entry) {
        // Get title and content from the JSON entry
        const title = entry.title;
        const content = entry.content;
        
        // Construct the item identifier
        const itemIdentifier = 'enderio:' + title;

        // Check if the item exists
        if (Item.exists(itemIdentifier)) {
            // Build the tooltip
            const tooltip = createTooltip(itemIdentifier)
                .addSummary(toString(content)) //this doesnt exist? TypeError: Cannot find function addSummary in object [object Object].
                .addBehaviour("Check the wiki for beter information") 
                .build()

            // Add the tooltip to the event
            ClientEvents.lang("en_us", (event) => {
                event.addAll(tooltip)
            });

            console.info('Attached content to item: ' + itemIdentifier);
        } else {
            console.warn('Item does not exist: ' + itemIdentifier);
        }
    });
} else {
    console.error('Error reading JSON file or missing "tooltips" array: ' + jsonFilePath);
}


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