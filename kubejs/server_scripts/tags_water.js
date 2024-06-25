ServerEvents.tags('fluid', event => {
  event.removeAll('minecraft:water')
  event.add('minecraft:water', "water")
})