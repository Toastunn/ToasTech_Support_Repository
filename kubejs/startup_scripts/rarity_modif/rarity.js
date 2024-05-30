const $Rarity = Java.loadClass("net.minecraft.world.item.Rarity")
const $UnaryOperator = Java.loadClass("java.util.function.UnaryOperator");
const $UtilsJS = Java.loadClass("dev.latvian.mods.kubejs.util.UtilsJS");
const $TextColor = Java.loadClass("net.minecraft.network.chat.TextColor");
const $Style = Java.loadClass("net.minecraft.network.chat.Style");
const withColorMethod = $Style.EMPTY.class.declaredMethods.filter(method => method.name.includes("m_131148_"))[0]


//custom rarities
const chromatic = createRarity("CHROMATIC", 0x6d0f80)


//rarity modif
  //chromaticreturn
  ItemEvents.modification(event => {
    event.modify([
      "createchromaticreturn:industrium_handle",
      "createchromaticreturn:refined_handle",
      "createchromaticreturn:durasteel_handle",
      "createchromaticreturn:silkstrum_handle",
      "createchromaticreturn:multiplite_handle",
      "createchromaticreturn:shadow_steel"
    ], item => {
      item.rarity = "uncommon"
    })
    const sstools = [
      'createchromaticreturn:multiplite_shadow_steel_sword',
      'createchromaticreturn:multiplite_shadow_steel_paxel',
      'createchromaticreturn:industrium_shadow_steel_paxel',
      'createchromaticreturn:industrium_shadow_steel_sword',
      'createchromaticreturn:shadow_steel_sword',
      'createchromaticreturn:shadow_steel_paxel',
      'createchromaticreturn:blazing_shadow_steel_sword',
      'createchromaticreturn:blazing_shadow_steel_paxel',
      'createchromaticreturn:bamboo_shadow_steel_sword',
      'createchromaticreturn:bamboo_shadow_steel_paxel',
      'createchromaticreturn:bone_shadow_steel_sword',
      'createchromaticreturn:bone_shadow_steel_paxel',
      'createchromaticreturn:durasteel_shadow_steel_sword',
      'createchromaticreturn:durasteel_shadow_steel_paxel',
      'createchromaticreturn:silkstrum_shadow_steel_sword',
      'createchromaticreturn:silkstrum_shadow_steel_paxel',
    ];
    for (let x in sstools) {
      event.modify(sstools[x], item => {
        item.rarity = "rare"
      })
    }
    event.modify([
      "createchromaticreturn:brass_component",
      "createchromaticreturn:andesite_component",
      "createchromaticreturn:multiplite_shadow_steel_paxel",
      "createchromaticreturn:multiplite_shadow_steel_sword",
      "createchromaticreturn:chromatic_compound"
    ], item => {
      item.rarity = "epic"
    })
    event.modify([
      "createchromaticreturn:bedrock_shard",
      "createchromaticreturn:multiplite_ingot"
    ], item => {
      item.rarity = "cosmic"
    })
    event.modify([
      "createchromaticreturn:radiant_glow_saber",
      "createchromaticreturn:radiant_glow_claws",
      "createchromaticreturn:antiplite_ingot"
    ], item => {
      item.rarity = chromatic
    })
  })
  //ae2
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
  //industrialforegoing
  ItemEvents.modification(event => {
    event.modify(['industrialforegoing:ore_laser_base'], item => {
      item.rarity = "cosmic"
    })
    event.modify([
      'industrialforegoing:pity_black_hole_unit', 
      'industrialforegoing:pity_black_hole_tank'
    ], item => {
      item.rarity = "pity"
    })
    event.modify([
      'industrialforegoing:simple_black_hole_unit', 
      'industrialforegoing:simple_black_hole_tank'
  ], item => {
      item.rarity = "simple"
    })
    event.modify([
      'industrialforegoing:advanced_black_hole_unit', 
      'industrialforegoing:advanced_black_hole_tank'
  ], item => {
      item.rarity = "advanced"
    })
    event.modify([
      'industrialforegoing:supreme_black_hole_unit',
      'industrialforegoing:supreme_black_hole_tank'
  ], item => {
      item.rarity = "supreme"
    })
    event.modify([
      'industrialforegoing:black_hole_controller'
    ], item => {
      item.rarity = 'epic'
    })
  })
  //mekanism
  ItemEvents.modification(event => {
    event.modify(['mekanism:digital_miner'], item => {
      item.rarity = "supreme"
    })
  })
  //avaritia
  ItemEvents.modification(event => {
    event.modify([
      Item.of('avaritia:singularity', '{Id:"avaritia:chromatic"}')
    ], item => {
      item.rarity = "cosmic"
    })
  })
  //mm
  ItemEvents.modification(event => {
    event.modify([
      "mm:elemental_transfigurator"
    ], item => {
      item.rarity = chromatic
    })
  })
  //enderio
  ItemEvents.modification(event => {
    event.modify([
      'enderio:grains_of_infinity'
    ], item => {
      item.rarity = 'uncommon'
    })
  })



function createRarity(/** @type {string} */ name, /** @type {number} */ colorCode){
  return $Rarity["create(java.lang.String,java.util.function.UnaryOperator)"](name, withColor(colorCode))
}

function withColor(/** @type {number} */ colorCode){
  return $UtilsJS.makeFunctionProxy("startup", $UnaryOperator, (style) => {
    return withColorMethod.invoke(style, $TextColor.fromRgb(colorCode));
  })
}