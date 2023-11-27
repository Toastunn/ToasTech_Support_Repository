// requires: create
// what -Weegeeday
/**
 * 
 * @param {Internal.ItemStack} itemID 
 */
function STANDARD_PALETTE(itemID) {
    $TooltipModifier.REGISTRY.register(itemID, new $ItemDescription(itemID, $Palette.STANDARD_CREATE))
}

const $ItemDescription = Java.loadClass('com.simibubi.create.foundation.item.ItemDescription$Modifier')
const $TooltipModifier = Java.loadClass('com.simibubi.create.foundation.item.TooltipModifier')
const $Palette = Java.loadClass('com.simibubi.create.foundation.item.TooltipHelper$Palette')

ClientEvents.init(event => {
    STANDARD_PALETTE('minecraft:amethyst_cluster')
})