ItemEvents.modification(event => {
  event.modify([
    "createchromaticreturn:industrium_handle",
    "createchromaticreturn:refined_handle",
    "createchromaticreturn:durasteel_handle",
    "createchromaticreturn:silkstrum_handle",
    "createchromaticreturn:multiplite_handle"
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
    'createchromaticreturn:silkstrum_shadow_steel_paxel'
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
    "createchromaticreturn:multiplite_shadow_steel_sword"
  ], item => {
    item.rarity = "epic"
  })
  event.modify([
    "createchromaticreturn:radiant_glow_saber",
    "createchromaticreturn:radiant_glow_claws",
    "createchromaticreturn:bedrock_shard"
  ], item => {
    item.rarity = "cosmic"
  })
})