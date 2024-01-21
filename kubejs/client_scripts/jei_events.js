JEIEvents.hideItems(event => {
  event.hide('extendedcrafting:redstone_ingot')
  event.hide('extendedcrafting:redstone_nugget')
  event.hide('extendedcrafting:redstone_ingot_block')
  event.hide('alltheores:brass_block')
  event.hide('alltheores:brass_ingot')
  event.hide('alltheores:brass_nugget')
  event.hide('alltheores:brass_plate')
  event.hide('alltheores:brass_gear')
  event.hide('alltheores:brass_rod')
  event.hide('alltheores:brass_dust')
})

JEIEvents.addItems(event => {
  event.add('extendedcrafting:ultimate_singularity')
  event.add("craftingstation:crafting_station_slab")
  event.add("craftingstation:crafting_station")
})