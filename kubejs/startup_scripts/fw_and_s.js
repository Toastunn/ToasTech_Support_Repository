ItemEvents.modification(event => {
    event.modify('minecraft:flint_and_steel', item => {
        item.maxDamage = 64
    })
})