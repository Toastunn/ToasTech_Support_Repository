// requires: ae2
ServerEvents.recipes(event => {
    event.recipes.ae2.entropy({block: "minecraft:stone_slab[type=bottom]"}, {block: "minecraft:stone_slab[type=top]"}, "heat")
    event.recipes.ae2.entropy({block: "minecraft:stone_slab[type=top]"}, {block: "minecraft:stone_slab[type=bottom]"}, "cool")

    event.recipes.ae2.transform('extendedcrafting:ender_ingot', ['iron_ingot']).circumstance({type: 'fluid', tag: 'toastech:pulsating_liquid'})
    event.recipes.ae2.transform("mekanism:ingot_uranium", ["mekanism:yellow_cake_uranium"]).circumstance({type: 'fluid', tag: 'toastech:lithium'})
    event.recipes.ae2.transform("blocksyouneed_luna:aquatrine", ["blocksyouneed_luna:sodalite"]).circumstance({type: 'explosion'})
})