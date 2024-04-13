import mods.mekanism.api.FloatingLong;
import mods.mekanism.api.ingredient.ChemicalStackIngredient.GasStackIngredient;
import mods.mekanism.api.ingredient.FluidStackIngredient;
import mods.mekanism.api.ingredient.ChemicalStackIngredient.InfusionStackIngredient;
import mods.mekanism.api.ingredient.ItemStackIngredient;
import mods.mekanism.api.ingredient.ChemicalStackIngredient.PigmentStackIngredient;
  var Enriching = <recipetype:mekanism:enriching>;
  var Infusing = <recipetype:mekanism:metallurgic_infusing>;
  var Reaction = <recipetype:mekanism:reaction>;
  var Rotary = <recipetype:mekanism:rotary>;
  var Purifying = <recipetype:mekanism:purifying>;
  var Injecting = <recipetype:mekanism:injecting>;
  var Synthesizing = <recipetype:mekanism:nucleosynthesizing>;
  var Oxidizing = <recipetype:mekanism:oxidizing>;
  var Crystallizing = <recipetype:mekanism:crystallizing>;
  var Painting = <recipetype:mekanism:painting>;
  var Combining = <recipetype:mekanism:combining>;
  var Crushing = <recipetype:mekanism:crushing>;
//removing mekanism recipes

Synthesizing.removeByName("mekanism:nucleosynthesizing/end_crystal");

//adding mekanism recipes (use addRecipe for mekanism found C:\Users\User\Twitch\Minecraft\Instances\AAAAAAAAAAAAAAAAAAAAAAAAAA\scripts\examples\mekanism)
  //enriching
    Enriching.addRecipe("grains_of_infinity_enriching", ItemStackIngredient.from(<item:kubejs:washed_grains_of_infinity>), <item:enderio:grains_of_infinity>);
  //infusing
    Infusing.addRecipe("lattice_infusion", <item:minecraft:netherite_ingot>, <infuse_type:mekanism:diamond> * 80, <item:avaritia:diamond_lattice>);
  //reaction
    Reaction.addRecipe("infalmming_water", <item:kubejs:radiant_catalyst>, <tag:fluids:minecraft:water> * 1000, <gas:mekanism:oxygen> * 1000, 600, <item:kubejs:radiant_catalyst>, <gas:kubejs:fire_vapor> * 2000, 1000);
    Reaction.addRecipe("breath_of_a_dead_dragon", <item:minecraft:dragon_head>, <tag:fluids:minecraft:water> * 500, <gas:mekanism:oxygen> * 300, 100, <item:minecraft:dragon_head>, <gas:kubejs:dragons_breath> * 850, 1000);
  //rotary
    Rotary.addRecipe("flamming_water/state_change", <fluid:enderio:fire_water> * 1, <gas:kubejs:fire_vapor> * 1, <gas:kubejs:fire_vapor>, <fluid:enderio:fire_water>);
    Rotary.addRecipe("hyper_experience/state_change", <fluid:create_enchantment_industry:hyper_experience> * 1, <gas:kubejs:hyper_experience_gas> * 1, <gas:kubejs:hyper_experience_gas>, <fluid:create_enchantment_industry:hyper_experience>);
    Rotary.addRecipe("fluidic_infinity/state_change", <fluid:kubejs:liquid_infinity> * 1, <gas:kubejs:gaseous_infinity> * 1, <gas:kubejs:gaseous_infinity>, <fluid:kubejs:liquid_infinity>);
    Rotary.addRecipe("dragons/breath_state_change", <fluid:kubejs:liquid_dragons_breath> * 1, <gas:kubejs:dragons_breath> * 1, <gas:kubejs:dragons_breath>, <fluid:kubejs:liquid_dragons_breath>);
    Rotary.addRecipe("polonium/state_change", <fluid:kubejs:liquid_polonium> * 1, <gas:mekanism:polonium> * 1, <gas:mekanism:polonium>, <fluid:kubejs:liquid_polonium>);
    Rotary.addRecipe("antimatter/state_change", <fluid:kubejs:liquid_antimatter> * 1, <gas:mekanism:antimatter> * 1, <gas:mekanism:antimatter>, <fluid:kubejs:liquid_antimatter>);
    Rotary.addRecipe("pulsating_fluid/state_change", <fluid:kubejs:pulsating_liquid> * 1, <gas:kubejs:pulsating_gas> * 1, <gas:kubejs:pulsating_gas>, <fluid:kubejs:pulsating_liquid>);
    Rotary.addRecipe("vibrant_fluid/state_change", <fluid:kubejs:vibrant_liquid> * 1, <gas:kubejs:vibrant_gas> * 1, <gas:kubejs:vibrant_gas>, <fluid:kubejs:vibrant_liquid>);
    Rotary.addRecipe("void/state_change", <fluid:kubejs:liquid_void> * 1, <gas:kubejs:void_gas> * 1, <gas:kubejs:void_gas>, <fluid:kubejs:liquid_void>);
  //purifying
    Purifying.addRecipe("purifying_grains_of_infinity", <item:enderio:grains_of_infinity>, <gas:mekanism:hydrofluoric_acid>, <item:kubejs:pure_grains_of_infinity>);
  //injecting
    Injecting.addRecipe('fan_void_catalyst', <item:create_connected:empty_fan_catalyst>, <gas:kubejs:void_gas> * 5, <item:kubejs:fan_void_catalyst>);
    Injecting.addRecipe("enchanting_grains_of_infinity", <item:kubejs:pure_grains_of_infinity>, <gas:kubejs:hyper_experience_gas> * 5, <item:kubejs:enchanted_grains_of_infinity>);
  //nucleosynthesizing
    Synthesizing.addRecipe("perfecting_the_infinite", <item:kubejs:superheated_grains_of_infinity>, <gas:mekanism:antimatter> * 750, <item:kubejs:atomically_perfect_grains_of_infinity>, 2000);
    Synthesizing.addRecipe("end_crystal", <item:minecraft:beacon>, <gas:mekanism:antimatter> * 1500, <item:minecraft:end_crystal>, 4000);
    Synthesizing.addRecipe("antimetal", <item:minecraft:crying_obsidian>, <gas:mekanism:antimatter> * 1, <item:blocksyouneed_luna:antimetal_ingot>, 2000);
    Synthesizing.addRecipe("antiplite", <item:createchromaticreturn:antiplite_ingot>, <gas:mekanism:antimatter> * 2000, <item:createchromaticreturn:multiplite_ingot>, 2500);
  //oxidisation
    Oxidizing.addRecipe("infinite_gasification", <item:kubejs:atomically_perfect_grains_of_infinity>, <gas:kubejs:gaseous_infinity> * 60);
  //crystallisation
    Crystallizing.addRecipe("crystallization_of_infinity", <gas:kubejs:gaseous_infinity> * 300, <item:kubejs:crystal_of_infinity>);
    Crystallizing.addRecipe("pulsating_crystal", <gas:kubejs:pulsating_gas> * 250, <item:enderio:pulsating_crystal>);
    Crystallizing.addRecipe("vibrant_crystal", <gas:kubejs:vibrant_gas> * 250, <item:enderio:vibrant_crystal>);
  //painting
    Painting.addRecipe("black_iron/painting", ItemStackIngredient.from(<item:minecraft:iron_ingot>), PigmentStackIngredient.from(<pigment:mekanism:black>), <item:extendedcrafting:black_iron_ingot>);
  //combining
    Combining.addRecipe("pity_frame/combining", <item:mekanism:steel_casing>, <item:minecraft:cobblestone>, <item:industrialforegoing:machine_frame_pity>);
  //crushing
    Crushing.addRecipe("crushed_salt/mekanism", <item:mekanism:salt>, <item:garnished:crushed_salt>);
    Crushing.addRecipe("crushed_salt/block/mekanism", <item:mekanism:block_salt>, <item:garnished:crushed_salt> * 5);