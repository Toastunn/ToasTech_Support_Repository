const $Rarity = Java.loadClass("net.minecraft.world.item.Rarity")
ItemEvents.modification(event => {
  event.modify([
    "ae2:cell_component_4k",
    'ae2:item_storage_cell_4k',
    'ae2:fluid_storage_cell_4k',
    'ae2:portable_item_cell_4k', 
    'ae2:portable_fluid_cell_4k',
    'ae2:4k_crafting_storage'
  ], item => {
    item.rarity = "pity"
  })
  event.modify([
    "ae2:cell_component_16k",
    "ae2:spatial_cell_component_2",
    'ae2:item_storage_cell_16k', 
    'ae2:fluid_storage_cell_16k', 
    'ae2:spatial_storage_cell_2',
    'ae2:portable_item_cell_16k', 
    'ae2:portable_fluid_cell_16k', 
    'ae2:16k_crafting_storage'
  ], item => {
    item.rarity = "simple"
  })
  event.modify([
    "ae2:cell_component_64k",
    "ae2:spatial_cell_component_16",
    'ae2:item_storage_cell_64k', 
    'ae2:fluid_storage_cell_64k', 
    'ae2:spatial_storage_cell_16',
    'ae2:portable_item_cell_64k', 
    'ae2:portable_fluid_cell_64k',
    'ae2:64k_crafting_storage'
  ], item => {
    item.rarity = "advanced"
  })
  event.modify([
    "ae2:cell_component_256k",
    "ae2:spatial_cell_component_128",
    'ae2:item_storage_cell_256k', 
    'ae2:fluid_storage_cell_256k', 
    'ae2:spatial_storage_cell_128',
    'ae2:portable_item_cell_256k', 
    'ae2:portable_fluid_cell_256k',
    'ae2:256k_crafting_storage'
  ], item => {
    item.rarity = "supreme"
  })
  event.modify([
    "ae2:quantum_entangled_singularity"
  ], item => {
    item.rarity = "rare"
  })
})
