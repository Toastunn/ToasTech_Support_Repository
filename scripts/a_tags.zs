#loader tags
import crafttweaker.api.tag.MCTag;

//removing tags
    //beacon payment resources
<tag:items:minecraft:beacon_payment_items>.removeId(<resource:mekanism:ingot_uranium>);
<tag:items:minecraft:beacon_payment_items>.removeId(<resource:minecraft:emerald>);
<tag:items:minecraft:beacon_payment_items>.removeId(<resource:minecraft:diamond>);
<tag:items:minecraft:beacon_payment_items>.removeId(<resource:minecraft:netherite_ingot>);
<tag:items:minecraft:beacon_payment_items>.removeId(<resource:minecraft:gold_ingot>);
<tag:items:minecraft:beacon_payment_items>.removeId(<resource:minecraft:iron_ingot>);
<tag:items:minecraft:beacon_payment_items>.removeId(<resource:minecraft:copper_ingot>);
<tag:items:minecraft:beacon_payment_items>.removeId(<resource:mekanism:ingot_lead>);
<tag:items:minecraft:beacon_payment_items>.removeId(<resource:mekanism:ingot_tin>);
<tag:items:minecraft:beacon_payment_items>.removeId(<resource:mekanism:ingot_osmium>);
<tag:items:minecraft:beacon_payment_items>.removeId(<resource:mekanism:ingot_refined_glowstone>);
<tag:items:minecraft:beacon_payment_items>.removeId(<resource:mekanism:ingot_refined_obsidian>);
<tag:items:minecraft:beacon_payment_items>.removeId(<resource:mekanism:ingot_steel>);
<tag:items:minecraft:beacon_payment_items>.removeId(<resource:mekanism:ingot_bronze>);
<tag:items:minecraft:beacon_payment_items>.removeId(<resource:create:andesite_alloy>);
<tag:items:minecraft:beacon_payment_items>.removeId(<resource:create:zinc_ingot>);
<tag:items:minecraft:beacon_payment_items>.removeId(<resource:create:brass_ingot>);
    //beacon base blocks
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:mekanism:block_bronze>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:mekanism:block_lead>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:mekanism:block_osmium>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:mekanism:block_refined_glowstone>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:mekanism:block_refined_obsidian>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:mekanism:block_steel>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:mekanism:block_tin>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:mekanism:block_uranium>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:create:brass_block>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:minecraft:copper_block>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:avaritia:crystal_matrix>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:minecraft:cut_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:minecraft:diamond_block>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:minecraft:emerald_block>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:create:experience_block>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:minecraft:exposed_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:minecraft:exposed_cut_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:minecraft:gold_block>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:minecraft:iron_block>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:minecraft:netherite_block>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:avaritia:neutron>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:minecraft:oxidized_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:minecraft:oxidized_cut_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:minecraft:waxed_copper_block>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:minecraft:waxed_cut_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:minecraft:waxed_exposed_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:minecraft:waxed_exposed_cut_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:minecraft:waxed_oxidized_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:minecraft:waxed_oxidized_cut_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:minecraft:waxed_weathered_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:minecraft:waxed_weathered_cut_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:minecraft:weathered_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:minecraft:weathered_cut_copper>);
<tag:blocks:minecraft:beacon_base_blocks>.removeId(<resource:create:zinc_block>);

//adding tags
    //Glowing items
<tag:items:crafttweaker:glowing_items>.addId(<resource:minecraft:glowstone_dust>);
<tag:items:crafttweaker:glowing_items>.addId(<resource:minecraft:glow_ink_sac>);
<tag:items:crafttweaker:glowing_items>.addId(<resource:minecraft:glow_berries>);
<tag:items:crafttweaker:glowing_items>.addId(<resource:minecraft:glow_lichen>);
<tag:items:crafttweaker:glowing_items>.addId(<resource:extendedcrafting:luminessence>);
    //rose quartzs
<tag:items:crafttweaker:rose_quartz>.addId(<resource:create:rose_quartz>);
<tag:items:crafttweaker:rose_quartz>.addId(<resource:biomesoplenty:rose_quartz_chunk>);
    //beacon base blocks
    //beacon payment resources
    //Crystal clusters
<tag:blocks:c:clusters>.addId(<resource:biomesoplenty:rose_quartz_cluster>);
<tag:blocks:crafttweaker:crystal_clusters>.add(<tag:blocks:c:clusters>);
<tag:blocks:c:clusters>.addId(<resource:biomesoplenty:brimstone_cluster>);
    //beacon redirect
<tag:blocks:better_beacons:beacon_redirect>.addId(<resource:minecraft:amethyst_cluster>);
<tag:blocks:better_beacons:beacon_redirect>.addId(<resource:ae2:quartz_cluster>);
<tag:blocks:better_beacons:beacon_redirect>.addId(<resource:biomesoplenty:rose_quartz_cluster>);
    //ftb task sceens
<tag:blocks:crafttweaker:task_screens>.addId(<resource:ftbquests:screen_1>);
<tag:blocks:crafttweaker:task_screens>.addId(<resource:ftbquests:screen_3>);
<tag:blocks:crafttweaker:task_screens_craftable_3x3>.add(<tag:blocks:crafttweaker:task_screens>);
<tag:blocks:crafttweaker:task_screens>.addId(<resource:ftbquests:screen_5>);
<tag:blocks:crafttweaker:task_screens>.addId(<resource:ftbquests:screen_7>);
        //this tag is only so it is compatible with ftbquests
<tag:items:crafttweaker:task_screens_craftable_3x3>.add(<tag:blocks:crafttweaker:task_screens_craftable_3x3>);