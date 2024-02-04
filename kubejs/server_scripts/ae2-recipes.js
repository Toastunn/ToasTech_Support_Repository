// requires: ae2
ServerEvents.recipes(event => {
    event.recipes.ae2.entropy({block: "minecraft:stone_slab[type=bottom]"}, {block: "minecraft:stone_slab[type=top]"}, "heat")
    event.recipes.ae2.entropy({block: "minecraft:stone_slab[type=top]"}, {block: "minecraft:stone_slab[type=bottom]"}, "cool")

    event.recipes.ae2.transform('extendedcrafting:ender_ingot', ['iron_ingot']).circumstance({type: 'fluid', tag: 'toastech:pulsating_liquid'})
})