StartupEvents.registry('item', e => {
    //incomplete ingot of infinity
    e.create('incomplete_ingot_of_infinity').displayName("Incomplete Ingot of Infinity").rarity('uncommon').tooltip("Serves no purpose outside the assembly line.")
    //ingots of steel
    e.create('ingots_of_steel_1').displayName("Ingots of Steel").tooltip("Serves no purpose outside the chained assembly line.").texture("kubejs:item/ingots_of_steel")
    e.create('ingots_of_steel_2').displayName("Ingots of Steel").tooltip("Serves no purpose outside the chained assembly line.").texture("kubejs:item/ingots_of_steel")
});