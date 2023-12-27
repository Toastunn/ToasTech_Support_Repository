StartupEvents.registry('block', event => {
    //infinite chassis
    event.create('infinite_chassis')
    .soundType('deepslate_bricks')
    .hardness(5)
    .resistance(10)
    .requiresTool(true)
    .tagBlock('minecraft:mineable/pickaxe')
    .tagBlock('minecraft:needs_stone_tool')
});