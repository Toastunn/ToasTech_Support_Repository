//removing recipes | craftingTable.remove();
craftingTable.remove(<item:minecraft:flint_and_steel>);
craftingTable.remove(<item:mekanism:steel_casing>);
craftingTable.remove(<item:mekanism:metallurgic_infuser>);
craftingTable.removeByName('mekanism:induction/cell/basic');
craftingTable.removeByName('mekanism:induction/provider/basic');
craftingTable.remove(<item:mekanism:ultimate_induction_cell>);
craftingTable.remove(<item:mekanism:elite_induction_cell>);
craftingTable.remove(<item:mekanism:advanced_induction_cell>);
craftingTable.remove(<item:mekanism:advanced_induction_provider>);
craftingTable.remove(<item:mekanism:elite_induction_provider>);
craftingTable.remove(<item:mekanism:ultimate_induction_provider>);
craftingTable.remove(<item:mekanism:basic_fluid_tank>);
craftingTable.remove(<item:mekanism:digital_miner>);
craftingTable.remove(<item:mekanism:teleportation_core>);
craftingTable.remove(<item:mekanism:dimensional_stabilizer>);
craftingTable.remove(<item:mekanism:robit>);
//adding recipes
    /*Shaped | craftingTable.addShaped(name as string, output as IItemStack, [
    row 1 [inputs as IIngredient], 
    row 2 [inputs as IIngredient],
    row 3 [inputs as IIngredient]]);
    */
    val air = <item:minecraft:air>;
        //create rods
            craftingTable.addShaped('andesite_rod/crafting', <item:kubejs:andesite_rod>, [
                [<item:create:andesite_alloy>],
                [<item:create:andesite_alloy>],
                [<item:create:andesite_alloy>]]);
            craftingTable.addShaped('brass_rod/crafting', <item:kubejs:brass_rod>, [
                [<item:create:brass_ingot>],
                [<item:create:brass_ingot>],
                [<item:create:brass_ingot>]]);
            craftingTable.addShaped('copper_rod/crafting', <item:kubejs:copper_rod>, [
                [<item:minecraft:copper_ingot>],
                [<item:minecraft:copper_ingot>],
                [<item:minecraft:copper_ingot>]]);
        //create frames
            craftingTable.addShaped('andesite_frame', <item:kubejs:andesite_frame>, [
                [<item:kubejs:andesite_rod>, <item:kubejs:andesite_rod>, <item:kubejs:andesite_rod>], 
                [<item:kubejs:andesite_rod>, air, <item:kubejs:andesite_rod>],
                [<item:kubejs:andesite_rod>, <item:kubejs:andesite_rod>, <item:kubejs:andesite_rod>]]);
            craftingTable.addShaped('brass_frame', <item:kubejs:brass_frame>, [
                [<item:kubejs:brass_rod>, <item:kubejs:brass_rod>, <item:kubejs:brass_rod>], 
                [<item:kubejs:brass_rod>, air, <item:kubejs:brass_rod>],
                [<item:kubejs:brass_rod>, <item:kubejs:brass_rod>, <item:kubejs:brass_rod>]]);
            craftingTable.addShaped('copper_frame', <item:kubejs:copper_frame>, [
                [<item:kubejs:copper_rod>, <item:kubejs:copper_rod>, <item:kubejs:copper_rod>], 
                [<item:kubejs:copper_rod>, air, <item:kubejs:copper_rod>],
                [<item:kubejs:copper_rod>, <item:kubejs:copper_rod>, <item:kubejs:copper_rod>]]);
        //mekanism
            craftingTable.addShaped('metallurgic_infuser', <item:mekanism:metallurgic_infuser>, [
                [<item:create:andesite_alloy>, <item:create:spout>, <item:create:andesite_alloy>],
                [<item:minecraft:redstone>, <item:mekanism:steel_casing>, <item:minecraft:redstone>],
                [<item:create:andesite_alloy>, <item:minecraft:furnace>, <item:create:andesite_alloy>]]);
            //Induction cells
                val tablet = <item:mekanism:energy_tablet>;
                craftingTable.addShaped('advanced_induction_cell', <item:mekanism:advanced_induction_cell>, [
                    [tablet, <item:mekanism:basic_induction_cell>, tablet],
                    [<item:mekanism:basic_induction_cell>, <item:mekanism:nugget_osmium>, <item:mekanism:basic_induction_cell>],
                    [tablet, <item:mekanism:basic_induction_cell>, tablet]]);
                craftingTable.addShaped('elite_induction_cell', <item:mekanism:elite_induction_cell>, [
                    [tablet, <item:mekanism:advanced_induction_cell>, tablet],
                    [<item:mekanism:advanced_induction_cell>, <item:mekanism:ingot_osmium>, <item:mekanism:advanced_induction_cell>],
                    [tablet, <item:mekanism:advanced_induction_cell>, tablet]]);
                craftingTable.addShaped('ultimate_indction_cell', <item:mekanism:ultimate_induction_cell>, [
                    [tablet, <item:mekanism:elite_induction_cell>, tablet],
                    [<item:mekanism:elite_induction_cell>, <item:mekanism:block_osmium>, <item:mekanism:elite_induction_cell>],
                    [tablet, <item:mekanism:elite_induction_cell>, tablet]]);
            //Induction provider
                val b_circuit = <item:mekanism:basic_control_circuit>;
                craftingTable.addShaped('advanced_induction_provider', <item:mekanism:advanced_induction_provider>, [
                    [b_circuit, <item:mekanism:basic_induction_provider>, b_circuit],
                    [<item:mekanism:basic_induction_provider>, <item:mekanism:nugget_osmium>, <item:mekanism:basic_induction_provider>],
                    [b_circuit, <item:mekanism:basic_induction_provider>, b_circuit]]);
                craftingTable.addShaped('elite_induction_provider', <item:mekanism:elite_induction_provider>, [
                    [b_circuit, <item:mekanism:advanced_induction_provider>, b_circuit],
                    [<item:mekanism:advanced_induction_provider>, <item:mekanism:ingot_osmium>, <item:mekanism:advanced_induction_provider>],
                    [b_circuit, <item:mekanism:advanced_induction_provider>, b_circuit]]);
                craftingTable.addShaped('ultimate_indction_provider', <item:mekanism:ultimate_induction_provider>, [
                    [b_circuit, <item:mekanism:elite_induction_provider>, b_circuit],
                    [<item:mekanism:elite_induction_provider>, <item:mekanism:block_osmium>, <item:mekanism:elite_induction_provider>],
                    [b_circuit, <item:mekanism:elite_induction_provider>, b_circuit]]);
            //basic tank
                craftingTable.addShaped('basic_fluid_tank', <item:mekanism:basic_fluid_tank>, [
                    [<item:minecraft:redstone>, <item:minecraft:iron_ingot>, <item:minecraft:redstone>],
                    [<item:minecraft:iron_ingot>, <tag:items:forge:glass>, <item:minecraft:iron_ingot>],
                    [<item:minecraft:redstone>, <item:minecraft:iron_ingot>, <item:minecraft:redstone>]]);
            //teleportation core
                craftingTable.addShaped('teleportation_core', <item:mekanism:teleportation_core>, [
                    [<item:extendedcrafting:enhanced_ender_catalyst>, <item:enderio:prescient_crystal>, <item:extendedcrafting:enhanced_ender_catalyst>],
                    [<item:ae2:silicon>, <item:ae2:quantum_entangled_singularity>, <item:ae2:silicon>],
                    [<item:extendedcrafting:enhanced_ender_catalyst>, <item:enderio:prescient_crystal>, <item:extendedcrafting:enhanced_ender_catalyst>]]);
            //dimensional stabilizer
                craftingTable.addShaped('dimensional_stabilizer', <item:mekanism:dimensional_stabilizer>, [
                    [<item:mekanism:ingot_refined_obsidian>, <item:mekanism:ultimate_control_circuit>, <item:mekanism:ingot_refined_obsidian>],
                    [<item:minecraft:end_crystal>, <item:mekanism:steel_casing>, <item:minecraft:end_crystal>],
                    [<item:mekanism:ingot_refined_obsidian>, <item:mekanism:ultimate_control_circuit>, <item:mekanism:ingot_refined_obsidian>]]);
                