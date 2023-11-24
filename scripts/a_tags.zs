import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.item.IItemStack;
import stdlib.List;

//removing tags
    //beacon payment ressources
<tag:items:minecraft:beacon_payment_items>.remove(<item:mekanism:ingot_uranium>);
<tag:items:minecraft:beacon_payment_items>.remove(<item:minecraft:emerald>);
<tag:items:minecraft:beacon_payment_items>.remove(<item:minecraft:diamond>);
<tag:items:minecraft:beacon_payment_items>.remove(<item:minecraft:netherite_ingot>);
<tag:items:minecraft:beacon_payment_items>.remove(<item:minecraft:gold_ingot>);
<tag:items:minecraft:beacon_payment_items>.remove(<item:minecraft:iron_ingot>);
<tag:items:minecraft:beacon_payment_items>.remove(<item:minecraft:copper_ingot>);
<tag:items:minecraft:beacon_payment_items>.remove(<item:mekanism:ingot_lead>);
<tag:items:minecraft:beacon_payment_items>.remove(<item:mekanism:ingot_tin>);
<tag:items:minecraft:beacon_payment_items>.remove(<item:mekanism:ingot_osmium>);
<tag:items:minecraft:beacon_payment_items>.remove(<item:mekanism:ingot_refined_glowstone>);
<tag:items:minecraft:beacon_payment_items>.remove(<item:mekanism:ingot_refined_obsidian>);
<tag:items:minecraft:beacon_payment_items>.remove(<item:mekanism:ingot_steel>);
<tag:items:minecraft:beacon_payment_items>.remove(<item:mekanism:ingot_bronze>);
<tag:items:minecraft:beacon_payment_items>.remove(<item:create:andesite_alloy>);
<tag:items:minecraft:beacon_payment_items>.remove(<item:create:zinc_ingot>);
<tag:items:minecraft:beacon_payment_items>.remove(<item:create:brass_ingot>);

//adding tags
    //Glowing items
<tag:items:crafttweaker:glowing_items>.add(<item:minecraft:glowstone_dust>);
<tag:items:crafttweaker:glowing_items>.add(<item:minecraft:glow_ink_sac>);
<tag:items:crafttweaker:glowing_items>.add(<item:minecraft:glow_berries>);
<tag:items:crafttweaker:glowing_items>.add(<item:minecraft:glow_lichen>);
<tag:items:crafttweaker:glowing_items>.add(<item:extendedcrafting:luminessence>);
    //rose quartzs
<tag:items:crafttweaker:rose_quartz>.add(<item:create:rose_quartz>);
<tag:items:crafttweaker:rose_quartz>.add(<item:biomesoplenty:rose_quartz_chunk>);
    //beacon base blocks
<tag:blocks:minecraft:beacon_base_blocks>.add(<block:avaritia:infinity>);
    //beacon payment ressources
<tag:items:minecraft:beacon_payment_items>.add(<item:create:polished_rose_quartz>);
