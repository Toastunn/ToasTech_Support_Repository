StartupEvents.registry('item', e => {
    //radiant catalyst
    e.create('radiant_catalyst').displayName("Radiant Catalyst").burnTime(2000)
    //heart of the sun
    e.create('heart_of_a_star').displayName("Heart of a Star")
    //Radiant alloy
    e.create('radiant_alloy').displayName("Radiant Alloy")
    //The Sun
    e.create('star').displayName("Star").burnTime(10000000000)
})