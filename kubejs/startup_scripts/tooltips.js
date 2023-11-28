// requires: create
if (Platform.isClientEnvironment()) return
// what -Weegeeday
// i'm not sure -Toaster
/**
 * 
 * @param {Internal.ItemStack} itemID 
 */
function STANDARD_PALETTE(itemID) {
    $TooltipModifier.REGISTRY.register(itemID, new $ItemDescription(itemID, $Palette.STANDARD_CREATE))
}

/**
 * 
 * @param {string} itemID 
 */
function BLUE(itemID) {
    $TooltipModifier.REGISTRY.register(itemID, new $ItemDescription(itemID, $Palette.BLUE))
}

/**
 * 
 * @param {string} itemID 
 */
function GREEN(itemID) {
    $TooltipModifier.REGISTRY.register(itemID, new $ItemDescription(itemID, $Palette.GREEN))
}

/**
 * 
 * @param {string} itemID 
 */
function YELLOW(itemID) {
    $TooltipModifier.REGISTRY.register(itemID, new $ItemDescription(itemID, $Palette.YELLOW))
}

/**
 * 
 * @param {string} itemID 
 */
function RED(itemID) {
    $TooltipModifier.REGISTRY.register(itemID, new $ItemDescription(itemID, $Palette.RED))
}

/**
 * 
 * @param {string} itemID 
 */
function PURPLE(itemID) {
    $TooltipModifier.REGISTRY.register(itemID, new $ItemDescription(itemID, $Palette.PURPLE))
}

/**
 * 
 * @param {string} itemID 
 */
function GRAY(itemID) {
    $TooltipModifier.REGISTRY.register(itemID, new $ItemDescription(itemID, $Palette.GRAY))
}


const $ItemDescription = Java.loadClass('com.simibubi.create.foundation.item.ItemDescription$Modifier')
const $TooltipModifier = Java.loadClass('com.simibubi.create.foundation.item.TooltipModifier')
const $Palette = Java.loadClass('com.simibubi.create.foundation.item.TooltipHelper$Palette')

ClientEvents.init(event => {
    STANDARD_PALETTE('minecraft:amethyst_cluster')
    BLUE(Item.of('minecraft:enchanted_book').enchant('create_sa:hellfire', 1))
})
