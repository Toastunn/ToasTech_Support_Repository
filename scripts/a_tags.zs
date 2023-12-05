#priority 100
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.item.IItemStack;

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
    //beacon base blocks
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:mekanism:block_bronze>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:mekanism:block_lead>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:mekanism:block_osmium>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:mekanism:block_refined_glowstone>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:mekanism:block_refined_obsidian>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:mekanism:block_steel>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:mekanism:block_tin>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:mekanism:block_uranium>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:create:brass_block>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:minecraft:copper_block>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:avaritia:crystal_matrix>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:minecraft:cut_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:minecraft:diamond_block>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:minecraft:emerald_block>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:create:experience_block>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:minecraft:exposed_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:minecraft:exposed_cut_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:minecraft:gold_block>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:avaritia:infinity>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:minecraft:iron_block>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:minecraft:netherite_block>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:avaritia:neutron>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:minecraft:oxidized_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:minecraft:oxidized_cut_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:minecraft:waxed_copper_block>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:minecraft:waxed_cut_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:minecraft:waxed_exposed_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:minecraft:waxed_exposed_cut_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:minecraft:waxed_oxidized_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:minecraft:waxed_oxidized_cut_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:minecraft:waxed_weathered_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:minecraft:waxed_weathered_cut_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:minecraft:weathered_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:minecraft:weathered_cut_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:create:zinc_block>);

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
<tag:blocks:minecraft:beacon_base_blocks>.add(<block:extendedcrafting:crystaltine_block>);
<tag:blocks:minecraft:beacon_base_blocks>.add(<block:enderio:energetic_alloy_block>);
<tag:blocks:minecraft:beacon_base_blocks>.add(<block:enderio:vibrant_alloy_block>);
<tag:blocks:minecraft:beacon_base_blocks>.add(<block:enderio:conductive_alloy_block>);
<tag:blocks:minecraft:beacon_base_blocks>.add(<block:enderio:pulsating_alloy_block>);
    //beacon payment ressources
<tag:items:minecraft:beacon_payment_items>.add(<item:avaritia:infinity_ingot>);
<tag:items:minecraft:beacon_payment_items>.add(<item:ae2:charged_certus_quartz_crystal>);
<tag:items:minecraft:beacon_payment_items>.add(<item:enderio:pulsating_alloy_ingot>);
<tag:items:minecraft:beacon_payment_items>.add(<item:enderio:vibrant_alloy_ingot>);
<tag:items:minecraft:beacon_payment_items>.add(<item:enderio:energetic_alloy_ingot>);
<tag:items:minecraft:beacon_payment_items>.add(<item:enderio:conductive_alloy_ingot>);
<tag:items:minecraft:beacon_payment_items>.add(<item:extendedcrafting:crystaltine_ingot>);
<tag:items:minecraft:beacon_payment_items>.add(<item:enderio:enticing_crystal>);
<tag:items:minecraft:beacon_payment_items>.add(<item:ae2:fluix_crystal>);
    //Crystal clusters
<tag:blocks:c:clusters>.add(<block:biomesoplenty:rose_quartz_cluster>);
<tag:blocks:crafttweaker:crystal_clusters>.add(<tag:blocks:c:clusters>);
<tag:blocks:c:clusters>.add(<block:biomesoplenty:brimstone_cluster>);
    //beacon redirect
<tag:blocks:better_beacons:beacon_redirect>.add(<block:minecraft:amethyst_cluster>);
<tag:blocks:better_beacons:beacon_redirect>.add(<block:ae2:quartz_cluster>);
<tag:blocks:better_beacons:beacon_redirect>.add(<block:biomesoplenty:rose_quartz_cluster>);
    //ftb task sceens
<tag:blocks:crafttweaker:task_screens>.add(<block:ftbquests:screen_1>);
<tag:blocks:crafttweaker:task_screens>.add(<block:ftbquests:screen_3>);
<tag:blocks:crafttweaker:task_screens_craftable_3x3>.add(<tag:blocks:crafttweaker:task_screens>);
<tag:blocks:crafttweaker:task_screens>.add(<block:ftbquests:screen_5>);
<tag:blocks:crafttweaker:task_screens>.add(<block:ftbquests:screen_7>);
        //this tag is only so it is compatible with ftbquests
<tag:items:crafttweaker:task_screens_craftable_3x3>.add(<tag:blocks:crafttweaker:task_screens_craftable_3x3>);