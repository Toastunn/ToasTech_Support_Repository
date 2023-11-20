/*
This script NEEDS to go inside kubejs/startup_scripts.

Here are all the currently supported palettes as of 0.5.1c.

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
{
    "item.create.example_item.tooltip": "EXAMPLE ITEM (just a marker that this tooltip exists)",
    "item.create.example_item.tooltip.summary": "A brief description of the item. _Underscores_ highlight a term.",
    "item.create.example_item.tooltip.condition1": "When this",
    "item.create.example_item.tooltip.behaviour1": "Then this item does this. (behaviours show on shift)",
    "item.create.example_item.tooltip.condition2": "And When this",
    "item.create.example_item.tooltip.behaviour2": "You can add as many behaviours as you like",
    "item.create.example_item.tooltip.control1": "When Ctrl pressed",
    "item.create.example_item.tooltip.action1": "These controls are displayed.",
}
*/

const $ItemDescription = Java.loadClass('com.simibubi.create.foundation.item.ItemDescription$Modifier')
const $TooltipModifier = Java.loadClass('com.simibubi.create.foundation.item.TooltipModifier')
const $Palette = Java.loadClass('com.simibubi.create.foundation.item.TooltipHelper$Palette')

/*
You can use a list and then use a for loop like I did to add items by color palette, but here is
essentially what it boils down to. However, you can just make a function to make this easier.

This script NEEDS to go inside kubejs/startup_scripts, if you missed the first message.
*/

ClientEvents.init(event => {
    $TooltipModifier.REGISTRY.register('modid:item_id', new $ItemDescription('modid:item_id', $Palette.STANDARD_CREATE))
    $TooltipModifier.REGISTRY.register('modid:item_id', new $ItemDescription('modid:item_id', $Palette.BLUE))
    $TooltipModifier.REGISTRY.register('modid:item_id', new $ItemDescription('modid:item_id', $Palette.GREEN))
    $TooltipModifier.REGISTRY.register('modid:item_id', new $ItemDescription('modid:item_id', $Palette.YELLOW))
    $TooltipModifier.REGISTRY.register('modid:item_id', new $ItemDescription('modid:item_id', $Palette.RED))
    $TooltipModifier.REGISTRY.register('modid:item_id', new $ItemDescription('modid:item_id', $Palette.PURPLE))
    $TooltipModifier.REGISTRY.register('modid:item_id', new $ItemDescription('modid:item_id', $Palette.GRAY))
})

/*
Once you have this written or something else, follow the JSON snippet above as the tooltip schema.
It can all be included in one lang JSON file located in kubejs/assets/lang/en_us.json

You could use JsonIo to automate this process, but I don't know how to do that yet.

If it's a block, use this instead.

{
    "block.modid.example_id.tooltip": "EXAMPLE ID",
    "block.modid.example_id.tooltip.summary": "Example summary _with_ highlighted words",
    "block.modid.example_id.tooltip.condition1": "Condition 1 up to 100",
    "block.modid.example_id.tooltip.behaviour1": "etc etc"
}

*/


/*
Here's my implementation below.
*/

let STANDARD_PALETTE = [
    'item:minecraft:amethyst_cluster'
]
let BLUE_PALETTE = [
 
]
let GREEN_PALETTE = [

]
let YELLOW_PALETTE = [

]
let RED_PALETTE = [
 
]
let PURPLE_PALETTE = [

]
let GRAY_PALETTE = [

]

ClientEvents.init(event => {
    STANDARD_PALETTE.forEach(itemID => {
        $TooltipModifier.REGISTRY.register(itemID, new $ItemDescription(itemID, $Palette.STANDARD_CREATE))
    })
    BLUE_PALETTE.forEach(itemID => {
        $TooltipModifier.REGISTRY.register(itemID, new $ItemDescription(itemID, $Palette.BLUE))
    })
    GREEN_PALETTE.forEach(itemID => {
        $TooltipModifier.REGISTRY.register(itemID, new $ItemDescription(itemID, $Palette.GREEN))
    })
    YELLOW_PALETTE.forEach(itemID => {
        $TooltipModifier.REGISTRY.register(itemID, new $ItemDescription(itemID, $Palette.YELLOW))
    })
    RED_PALETTE.forEach(itemID => {
        $TooltipModifier.REGISTRY.register(itemID, new $ItemDescription(itemID, $Palette.RED))
    })
    PURPLE_PALETTE.forEach(itemID => {
        $TooltipModifier.REGISTRY.register(itemID, new $ItemDescription(itemID, $Palette.PURPLE))
    })
    GRAY_PALETTE.forEach(itemID => {
        $TooltipModifier.REGISTRY.register(itemID, new $ItemDescription(itemID, $Palette.GRAY))
    })
})