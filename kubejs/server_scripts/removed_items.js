const removedItems = [
  "alltheores:brass_rod",
  "alltheores:brass_block",
  "alltheores:brass_ingot",
  "alltheores:brass_nugget",
  "alltheores:brass_plate",
  "alltheores:brass_gear",
  "alltheores:brass_dust",
  "watersources:iron_upgrade",
  "watersources:gold_upgrade",
  "watersources:diamond_upgrade",
  "watersources:netherite_upgrade",
  "mm:et_fluid_port_output",
  "mm:et_energy_port_output",
  "mm:et_kinetic_port_output",
  "mm:cc_energy_port_output",
  "mm:cc_item_port_output",
  "mm:cmc_energy_port_output",
  "mm:cmc_fluid_port_output",
  "mm:cmc_kinetic_port_output",
  "mm:ias_energy_port_output"
];

ServerEvents.tags('item', event => {
  removedItems.forEach(item => {
    event.removeAllTagsFrom(item)
    })
})

ServerEvents.recipes(event => {
  removedItems.forEach(item => {
    event.remove({ output: item })
  })
  if(Utils.server) Utils.server.persistentData.put('removedItems', removedItems)
})