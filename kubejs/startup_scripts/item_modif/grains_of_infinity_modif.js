ItemEvents.modification(event => {
    event.modify('enderio:grains_of_infinity', item => {
        item.rarity = "uncommon"
    })
})