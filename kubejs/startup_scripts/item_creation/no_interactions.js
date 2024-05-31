StartupEvents.registry('item', e => {
    //radiant catalyst
    e.create('radiant_catalyst').burnTime(2000)
    //void in a bottle
    e.create('void_in_a_bottle').rarity('uncommon')
    //ethereal brick
    e.create('ethereal_brick').rarity("common").displayName('Ethereal Ingot')
    //iodine
    e.create('iodine').rarity('rare')
    //silver iodine
    e.create('silver_iodide').rarity("rare")
    //dry ice
    e.create('dry_ice').rarity("uncommon")
    //lazurite
    e.create('lazurite')
  //endgame stuff
    //lightning
    e.create('lightning').glow(true).rarity('epic').tooltip(Text.darkGray("§o...in the palm of your hand."))
    //crystal of desolation
    e.create('crystal_of_desolation').glow(true).rarity('uncommon')
    //mass
    e.create('ringularity').glow(true).rarity("cosmic").tooltip(Text.darkGray("§oSpinning Infinity."))
    //creative essence
    e.create("creative_essence").glow(true).rarity("cosmic").tooltip(Text.darkGray("§oAn alternate universe was needed to make this..."))
    //creativium
    e.create('creativium').glow(true).rarity("chromatic").tooltip(Text.darkGray("§oPush beyond Infinity."))
  //progression
    //Raw Grains
    e.create('raw_grains_of_infinity')
    //Washed Grains
    e.create('washed_grains_of_infinity')
    //Pure Grains
    e.create('pure_grains_of_infinity').rarity('uncommon')
    //Enchanted Grains
    e.create('enchanted_grains_of_infinity').glow(true).rarity('uncommon')
    //Superheated Grains
    e.create('superheated_grains_of_infinity').glow(true).rarity('rare')
    //Atomically Perfect Grains
    e.create('atomically_perfect_grains_of_infinity').glow(true).rarity('epic')
    //crystal
    e.create('crystal_of_infinity').glow(true).rarity('epic')
    //ingot
    e.create('ingot_of_infinity').glow(true).rarity('epic')
    //alloy
    e.create('alloy_of_infinity').glow(true).rarity('epic')
    //anti-infinity
    e.create('anti_infinity').displayName("Anti-Infinity").rarity('cosmic')
    //Star
    e.create('star').rarity("chromatic").displayName("Heat").burnTime(2147483647).tooltip(Text.darkGray("§oLike touching the sun."))
    //Charm token
    e.create('charm_token').displayName("Charm Slot Token").unstackable().rarity('chromatic')
  //sequenced assembly incomplete items
    //incomplete ingot of infinity
    e.create('incomplete_ingot_of_infinity').rarity('uncommon').tooltip(Text.gray("Serves no purpose outside the assembly line."))
    //ingots of steel
    e.create('ingots_of_steel_1').displayName("Ingots of Steel").tooltip(Text.gray("Serves no purpose outside the chained assembly line.")).texture("kubejs:item/ingots_of_steel")
    e.create('ingots_of_steel_2').displayName("Ingots of Steel").tooltip(Text.gray("Serves no purpose outside the chained assembly line.")).texture("kubejs:item/ingots_of_steel")
    //limbo steel
    e.create('limbo_steel').rarity('epic')
    //glowing steel
    e.create('glowing_steel').rarity('uncommon').tooltip(Text.gray("Serves no purpose outside the assembly line."))
    //incomplete shadow mechanism
    e.create('incomplete_shadow_mechanism').rarity('uncommon').tooltip(Text.gray("Serves no purpose outside the assembly line."))
  //create casing rework
    //Andesite rod
    e.create('andesite_rod')
    //Brass rod
    e.create('brass_rod')
    //Copper rod
    e.create('copper_rod')
  //singularities
    //unstable

    //water
      e.create('water_singularity').rarity('epic').tooltip(Text.darkGray("§o[SERVER] thinks it needs more water.")).modelJson({
        parent: "minecraft:item/generated",
        textures: {
          layer0: "kubejs:item/water_singularity_base",
          layer1: "kubejs:item/water_singularity_overlay"
        }
      })
})