//client_scripts.lang.js
const $ItemDescription = Java.loadClass('com.simibubi.create.foundation.item.ItemDescription$Modifier');
const $TooltipModifier = Java.loadClass('com.simibubi.create.foundation.item.TooltipModifier');
const $Palette = Java.loadClass('com.simibubi.create.foundation.item.TooltipHelper$Palette');
ClientEvents.lang('en_us',event => {
    global.itemTooltips.forEach(tooltipObject => {
        let [stack, tooltip] = tooltipObject
        console.info(`adding ${tooltip} to ${stack}`)
        event.add(`${stack.item.getDescriptionId()}.tooltip.summary`, tooltip)
        global.itemTooltips = global.itemTooltips.filter(item => item !== tooltipObject)
    });
    Ingredient.all.stacks.forEach(stack => {
        $TooltipModifier.REGISTRY.register(
            stack.item.id, new $ItemDescription(
                stack.item,
                $Palette.STANDARD_CREATE
            )
        )
    });
});