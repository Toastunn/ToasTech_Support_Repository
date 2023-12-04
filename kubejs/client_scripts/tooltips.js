global.itemTooltips = []
const $ItemDescription = Java.loadClass('com.simibubi.create.foundation.item.ItemDescription$Modifier');
const $TooltipModifier = Java.loadClass('com.simibubi.create.foundation.item.TooltipModifier');
const $Palette = Java.loadClass('com.simibubi.create.foundation.item.TooltipHelper$Palette');
ClientEvents.lang('en_us',event => {
    global.itemTooltips.forEach(tooltipObject => {
        let [id, tooltip] = tooltipObject
        let item = Item.of(id)
        console.info(`adding ${tooltip} to ${item}`)
        event.add(`${item.getDescriptionId()}.tooltip.summary`, tooltip)
    });
    Ingredient.all.itemIds.forEach(id => {
        $TooltipModifier.REGISTRY.registerDeferred(
          id, (item) => new $ItemDescription(
              item,
              $Palette.STANDARD_CREATE
          )
        )
    });
});
/*In kubejs/assets/kubejs/lang/en_us.js, use the following format;
for blocks;
    "block.modid.itemid.tooltip": "EXAMPLE ITEM (just a marker that this tooltip exists)",
    "block.modid.itemid.tooltip.summary": "A brief description of the item. _Underscores_ highlight a term.",
    "block.modid.itemid.tooltip.condition1": "When this",
    "block.modid.itemid.tooltip.behaviour1": "Then this item does this. (behaviours show on shift)",
    "block.modid.itemid.tooltip.condition2": "And When this",
    "block.modid.itemid.tooltip.behaviour2": "You can add as many behaviours as you like",
    "block.modid.itemid.tooltip.control1": "When Ctrl pressed",
    "block.modid.itemid.tooltip.action1": "These controls are displayed.",

for items;

    "item.create.example_item.tooltip": "EXAMPLE ITEM (just a marker that this tooltip exists)",
    "item.create.example_item.tooltip.summary": "A brief description of the item. _Underscores_ highlight a term.",
    "item.create.example_item.tooltip.condition1": "When this",
    "item.create.example_item.tooltip.behaviour1": "Then this item does this. (behaviours show on shift)",
    "item.create.example_item.tooltip.condition2": "And When this",
    "item.create.example_item.tooltip.behaviour2": "You can add as many behaviours as you like",
    "item.create.example_item.tooltip.control1": "When Ctrl pressed",
    "item.create.example_item.tooltip.action1": "These controls are displayed.",
*/