StartupEvents.registry('item', e => {
    //Raw Grains
    e.create('raw_grains_of_infinity').displayName("Raw Grains of Infinity")
    //Washed Grains
    e.create('washed_grains_of_infinity').displayName("Washed Grains of Infinity")
    //Pure Grains
    e.create('pure_grains_of_infinity').displayName("Pure Grains of Infinity").rarity('uncommon')
    //Enchanted Grains
    e.create('enchanted_grains_of_infinity').displayName("Enchanted Grains of Infinity").rarity('uncommon')
    //Superheated Grains
    e.create('superheated_grains_of_infinity').displayName("Superheated Grains of Infinity").rarity('rare')
    //Atomically Perfect Grains
    e.create('atomically_perfect_grains_of_infinity').displayName("Atomically Perfect Grains of Infinity").rarity('epic')
    //crystal
    e.create('crystal_of_infinity').displayName("Crystal of Infinity").rarity('epic')
    //ingot
    e.create('ingot_of_infinity').displayName("Ingot of Infinity").rarity('epic')
    //incomplete ingot (see sequenced_assembly_incomplete_items)
    //alloy
    e.create('alloy_of_infinity').displayName("Alloy of Infinity").rarity('epic')
})