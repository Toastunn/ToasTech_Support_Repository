import mods.mekanism.api.FloatingLong;
import mods.mekanism.api.ingredient.ChemicalStackIngredient.GasStackIngredient;
import mods.mekanism.api.ingredient.FluidStackIngredient;
import mods.mekanism.api.ingredient.ItemStackIngredient;

/*
 * Adds six Reaction Recipes that do the following:
 * 1) Adds a recipe that uses 350 mB of Water, 50 mB of Hydrogen Chloride, and a piece of Sawdust to create two pieces of Paper in 45 ticks, using an extra 25 Joules.
 * 2) Adds a recipe that uses 100 mB of Liquid Chlorine, 100 mB of Hydrogen, and a Block of Sand to create a Salt Block in 300 ticks.
 * 3) Adds a recipe that uses 50 mB of Water, 50 mB of Oxygen, and eight Wooden Pressure Plates to create 50 mB of Hydrogen in 74 ticks, using an extra 100 Joules.
 * 4) Adds a recipe that uses 25 mB of Water, 25 mB of Oxygen, and eight Wooden Buttons to create 25 mB of Hydrogen in 37 ticks.
 * 5) Adds a recipe that uses 400 mB of Water, 400 mB of Oxygen, and twenty Wooden Fence to create a Charcoal Dust and 400 mB of Hydrogen in 600 ticks, using an extra 300 Joules.
 * 6) Adds a recipe that uses 400 mB of Water, 400 mB of Oxygen, and four Boats to create a Charcoal Dust and 400 mB of Hydrogen in 600 ticks.
*/

// <recipetype:mekanism:reaction>.addRecipe(name as string, inputSolid as ItemStackIngredient, inputFluid as FluidStackIngredient, inputGas as GasStackIngredient, duration as int, outputItem as IItemStack)
// <recipetype:mekanism:reaction>.addRecipe(name as string, inputSolid as ItemStackIngredient, inputFluid as FluidStackIngredient, inputGas as GasStackIngredient, duration as int, outputGas as ICrTGasStack)
// <recipetype:mekanism:reaction>.addRecipe(name as string, inputSolid as ItemStackIngredient, inputFluid as FluidStackIngredient, inputGas as GasStackIngredient, duration as int, outputItem as IItemStack, energyRequired as FloatingLong)
// <recipetype:mekanism:reaction>.addRecipe(name as string, inputSolid as ItemStackIngredient, inputFluid as FluidStackIngredient, inputGas as GasStackIngredient, duration as int, outputItem as IItemStack, outputGas as ICrTGasStack)
// <recipetype:mekanism:reaction>.addRecipe(name as string, inputSolid as ItemStackIngredient, inputFluid as FluidStackIngredient, inputGas as GasStackIngredient, duration as int, outputGas as ICrTGasStack, energyRequired as FloatingLong)
// <recipetype:mekanism:reaction>.addRecipe(name as string, inputSolid as ItemStackIngredient, inputFluid as FluidStackIngredient, inputGas as GasStackIngredient, duration as int, outputItem as IItemStack, outputGas as ICrTGasStack, energyRequired as FloatingLong)

<recipetype:mekanism:reaction>.addRecipe("reaction/sawdust", ItemStackIngredient.from(<tag:items:forge:sawdust>), FluidStackIngredient.from(<tag:fluids:minecraft:water>, 350), GasStackIngredient.from(<gas:mekanism:hydrogen_chloride> * 50), 45, <item:minecraft:paper> * 2, FloatingLong.create(25));
//Alternate implementations of the above recipe are shown commented below. These implementations make use of implicit casting to allow easier calling:
// <recipetype:mekanism:reaction>.addRecipe("reaction/sawdust", <tag:items:forge:sawdust>, FluidStackIngredient.from(<tag:fluids:minecraft:water>, 350), GasStackIngredient.from(<gas:mekanism:hydrogen_chloride> * 50), 45, <item:minecraft:paper> * 2, FloatingLong.create(25));
// <recipetype:mekanism:reaction>.addRecipe("reaction/sawdust", ItemStackIngredient.from(<tag:items:forge:sawdust>), <tag:fluids:minecraft:water> * 350, GasStackIngredient.from(<gas:mekanism:hydrogen_chloride> * 50), 45, <item:minecraft:paper> * 2, FloatingLong.create(25));
// <recipetype:mekanism:reaction>.addRecipe("reaction/sawdust", <tag:items:forge:sawdust>, <tag:fluids:minecraft:water> * 350, GasStackIngredient.from(<gas:mekanism:hydrogen_chloride> * 50), 45, <item:minecraft:paper> * 2, FloatingLong.create(25));
// <recipetype:mekanism:reaction>.addRecipe("reaction/sawdust", ItemStackIngredient.from(<tag:items:forge:sawdust>), FluidStackIngredient.from(<tag:fluids:minecraft:water>, 350), <gas:mekanism:hydrogen_chloride> * 50, 45, <item:minecraft:paper> * 2, FloatingLong.create(25));
// <recipetype:mekanism:reaction>.addRecipe("reaction/sawdust", <tag:items:forge:sawdust>, FluidStackIngredient.from(<tag:fluids:minecraft:water>, 350), <gas:mekanism:hydrogen_chloride> * 50, 45, <item:minecraft:paper> * 2, FloatingLong.create(25));
// <recipetype:mekanism:reaction>.addRecipe("reaction/sawdust", ItemStackIngredient.from(<tag:items:forge:sawdust>), <tag:fluids:minecraft:water> * 350, <gas:mekanism:hydrogen_chloride> * 50, 45, <item:minecraft:paper> * 2, FloatingLong.create(25));
// <recipetype:mekanism:reaction>.addRecipe("reaction/sawdust", <tag:items:forge:sawdust>, <tag:fluids:minecraft:water> * 350, <gas:mekanism:hydrogen_chloride> * 50, 45, <item:minecraft:paper> * 2, FloatingLong.create(25));
// <recipetype:mekanism:reaction>.addRecipe("reaction/sawdust", ItemStackIngredient.from(<tag:items:forge:sawdust>), FluidStackIngredient.from(<tag:fluids:minecraft:water>, 350), GasStackIngredient.from(<gas:mekanism:hydrogen_chloride> * 50), 45, <item:minecraft:paper> * 2, 25);
// <recipetype:mekanism:reaction>.addRecipe("reaction/sawdust", <tag:items:forge:sawdust>, FluidStackIngredient.from(<tag:fluids:minecraft:water>, 350), GasStackIngredient.from(<gas:mekanism:hydrogen_chloride> * 50), 45, <item:minecraft:paper> * 2, 25);
// <recipetype:mekanism:reaction>.addRecipe("reaction/sawdust", ItemStackIngredient.from(<tag:items:forge:sawdust>), <tag:fluids:minecraft:water> * 350, GasStackIngredient.from(<gas:mekanism:hydrogen_chloride> * 50), 45, <item:minecraft:paper> * 2, 25);
// <recipetype:mekanism:reaction>.addRecipe("reaction/sawdust", <tag:items:forge:sawdust>, <tag:fluids:minecraft:water> * 350, GasStackIngredient.from(<gas:mekanism:hydrogen_chloride> * 50), 45, <item:minecraft:paper> * 2, 25);
// <recipetype:mekanism:reaction>.addRecipe("reaction/sawdust", ItemStackIngredient.from(<tag:items:forge:sawdust>), FluidStackIngredient.from(<tag:fluids:minecraft:water>, 350), <gas:mekanism:hydrogen_chloride> * 50, 45, <item:minecraft:paper> * 2, 25);
// <recipetype:mekanism:reaction>.addRecipe("reaction/sawdust", <tag:items:forge:sawdust>, FluidStackIngredient.from(<tag:fluids:minecraft:water>, 350), <gas:mekanism:hydrogen_chloride> * 50, 45, <item:minecraft:paper> * 2, 25);
// <recipetype:mekanism:reaction>.addRecipe("reaction/sawdust", ItemStackIngredient.from(<tag:items:forge:sawdust>), <tag:fluids:minecraft:water> * 350, <gas:mekanism:hydrogen_chloride> * 50, 45, <item:minecraft:paper> * 2, 25);
// <recipetype:mekanism:reaction>.addRecipe("reaction/sawdust", <tag:items:forge:sawdust>, <tag:fluids:minecraft:water> * 350, <gas:mekanism:hydrogen_chloride> * 50, 45, <item:minecraft:paper> * 2, 25);

<recipetype:mekanism:reaction>.addRecipe("reaction/sand", ItemStackIngredient.from(<tag:items:forge:sand>), FluidStackIngredient.from(<tag:fluids:forge:chlorine>, 100), GasStackIngredient.from(<gas:mekanism:hydrogen> * 100), 300, <item:mekanism:block_salt>);
//Alternate implementations of the above recipe are shown commented below. These implementations make use of implicit casting to allow easier calling:
// <recipetype:mekanism:reaction>.addRecipe("reaction/sand", <tag:items:forge:sand>, FluidStackIngredient.from(<tag:fluids:forge:chlorine>, 100), GasStackIngredient.from(<gas:mekanism:hydrogen> * 100), 300, <item:mekanism:block_salt>);
// <recipetype:mekanism:reaction>.addRecipe("reaction/sand", ItemStackIngredient.from(<tag:items:forge:sand>), <tag:fluids:forge:chlorine> * 100, GasStackIngredient.from(<gas:mekanism:hydrogen> * 100), 300, <item:mekanism:block_salt>);
// <recipetype:mekanism:reaction>.addRecipe("reaction/sand", <tag:items:forge:sand>, <tag:fluids:forge:chlorine> * 100, GasStackIngredient.from(<gas:mekanism:hydrogen> * 100), 300, <item:mekanism:block_salt>);
// <recipetype:mekanism:reaction>.addRecipe("reaction/sand", ItemStackIngredient.from(<tag:items:forge:sand>), FluidStackIngredient.from(<tag:fluids:forge:chlorine>, 100), <gas:mekanism:hydrogen> * 100, 300, <item:mekanism:block_salt>);
// <recipetype:mekanism:reaction>.addRecipe("reaction/sand", <tag:items:forge:sand>, FluidStackIngredient.from(<tag:fluids:forge:chlorine>, 100), <gas:mekanism:hydrogen> * 100, 300, <item:mekanism:block_salt>);
// <recipetype:mekanism:reaction>.addRecipe("reaction/sand", ItemStackIngredient.from(<tag:items:forge:sand>), <tag:fluids:forge:chlorine> * 100, <gas:mekanism:hydrogen> * 100, 300, <item:mekanism:block_salt>);
// <recipetype:mekanism:reaction>.addRecipe("reaction/sand", <tag:items:forge:sand>, <tag:fluids:forge:chlorine> * 100, <gas:mekanism:hydrogen> * 100, 300, <item:mekanism:block_salt>);

<recipetype:mekanism:reaction>.addRecipe("reaction/wooden_buttons", ItemStackIngredient.from(<tag:items:minecraft:wooden_buttons>, 8), FluidStackIngredient.from(<tag:fluids:minecraft:water>, 25), GasStackIngredient.from(<gas:mekanism:oxygen> * 25), 37, <gas:mekanism:hydrogen> * 25);
//Alternate implementations of the above recipe are shown commented below. These implementations make use of implicit casting to allow easier calling:
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_buttons", <tag:items:minecraft:wooden_buttons> * 8, FluidStackIngredient.from(<tag:fluids:minecraft:water>, 25), GasStackIngredient.from(<gas:mekanism:oxygen> * 25), 37, <gas:mekanism:hydrogen> * 25);
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_buttons", ItemStackIngredient.from(<tag:items:minecraft:wooden_buttons>, 8), <tag:fluids:minecraft:water> * 25, GasStackIngredient.from(<gas:mekanism:oxygen> * 25), 37, <gas:mekanism:hydrogen> * 25);
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_buttons", <tag:items:minecraft:wooden_buttons> * 8, <tag:fluids:minecraft:water> * 25, GasStackIngredient.from(<gas:mekanism:oxygen> * 25), 37, <gas:mekanism:hydrogen> * 25);
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_buttons", ItemStackIngredient.from(<tag:items:minecraft:wooden_buttons>, 8), FluidStackIngredient.from(<tag:fluids:minecraft:water>, 25), <gas:mekanism:oxygen> * 25, 37, <gas:mekanism:hydrogen> * 25);
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_buttons", <tag:items:minecraft:wooden_buttons> * 8, FluidStackIngredient.from(<tag:fluids:minecraft:water>, 25), <gas:mekanism:oxygen> * 25, 37, <gas:mekanism:hydrogen> * 25);
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_buttons", ItemStackIngredient.from(<tag:items:minecraft:wooden_buttons>, 8), <tag:fluids:minecraft:water> * 25, <gas:mekanism:oxygen> * 25, 37, <gas:mekanism:hydrogen> * 25);
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_buttons", <tag:items:minecraft:wooden_buttons> * 8, <tag:fluids:minecraft:water> * 25, <gas:mekanism:oxygen> * 25, 37, <gas:mekanism:hydrogen> * 25);

<recipetype:mekanism:reaction>.addRecipe("reaction/wooden_pressure_plates", ItemStackIngredient.from(<tag:items:minecraft:wooden_pressure_plates>, 8), FluidStackIngredient.from(<tag:fluids:minecraft:water>, 50), GasStackIngredient.from(<gas:mekanism:oxygen> * 50), 74, <gas:mekanism:hydrogen> * 50, FloatingLong.create(100));
//Alternate implementations of the above recipe are shown commented below. These implementations make use of implicit casting to allow easier calling:
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_pressure_plates", <tag:items:minecraft:wooden_pressure_plates> * 8, FluidStackIngredient.from(<tag:fluids:minecraft:water>, 50), GasStackIngredient.from(<gas:mekanism:oxygen> * 50), 74, <gas:mekanism:hydrogen> * 50, FloatingLong.create(100));
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_pressure_plates", ItemStackIngredient.from(<tag:items:minecraft:wooden_pressure_plates>, 8), <tag:fluids:minecraft:water> * 50, GasStackIngredient.from(<gas:mekanism:oxygen> * 50), 74, <gas:mekanism:hydrogen> * 50, FloatingLong.create(100));
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_pressure_plates", <tag:items:minecraft:wooden_pressure_plates> * 8, <tag:fluids:minecraft:water> * 50, GasStackIngredient.from(<gas:mekanism:oxygen> * 50), 74, <gas:mekanism:hydrogen> * 50, FloatingLong.create(100));
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_pressure_plates", ItemStackIngredient.from(<tag:items:minecraft:wooden_pressure_plates>, 8), FluidStackIngredient.from(<tag:fluids:minecraft:water>, 50), <gas:mekanism:oxygen> * 50, 74, <gas:mekanism:hydrogen> * 50, FloatingLong.create(100));
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_pressure_plates", <tag:items:minecraft:wooden_pressure_plates> * 8, FluidStackIngredient.from(<tag:fluids:minecraft:water>, 50), <gas:mekanism:oxygen> * 50, 74, <gas:mekanism:hydrogen> * 50, FloatingLong.create(100));
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_pressure_plates", ItemStackIngredient.from(<tag:items:minecraft:wooden_pressure_plates>, 8), <tag:fluids:minecraft:water> * 50, <gas:mekanism:oxygen> * 50, 74, <gas:mekanism:hydrogen> * 50, FloatingLong.create(100));
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_pressure_plates", <tag:items:minecraft:wooden_pressure_plates> * 8, <tag:fluids:minecraft:water> * 50, <gas:mekanism:oxygen> * 50, 74, <gas:mekanism:hydrogen> * 50, FloatingLong.create(100));
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_pressure_plates", ItemStackIngredient.from(<tag:items:minecraft:wooden_pressure_plates>, 8), FluidStackIngredient.from(<tag:fluids:minecraft:water>, 50), GasStackIngredient.from(<gas:mekanism:oxygen> * 50), 74, <gas:mekanism:hydrogen> * 50, 100);
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_pressure_plates", <tag:items:minecraft:wooden_pressure_plates> * 8, FluidStackIngredient.from(<tag:fluids:minecraft:water>, 50), GasStackIngredient.from(<gas:mekanism:oxygen> * 50), 74, <gas:mekanism:hydrogen> * 50, 100);
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_pressure_plates", ItemStackIngredient.from(<tag:items:minecraft:wooden_pressure_plates>, 8), <tag:fluids:minecraft:water> * 50, GasStackIngredient.from(<gas:mekanism:oxygen> * 50), 74, <gas:mekanism:hydrogen> * 50, 100);
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_pressure_plates", <tag:items:minecraft:wooden_pressure_plates> * 8, <tag:fluids:minecraft:water> * 50, GasStackIngredient.from(<gas:mekanism:oxygen> * 50), 74, <gas:mekanism:hydrogen> * 50, 100);
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_pressure_plates", ItemStackIngredient.from(<tag:items:minecraft:wooden_pressure_plates>, 8), FluidStackIngredient.from(<tag:fluids:minecraft:water>, 50), <gas:mekanism:oxygen> * 50, 74, <gas:mekanism:hydrogen> * 50, 100);
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_pressure_plates", <tag:items:minecraft:wooden_pressure_plates> * 8, FluidStackIngredient.from(<tag:fluids:minecraft:water>, 50), <gas:mekanism:oxygen> * 50, 74, <gas:mekanism:hydrogen> * 50, 100);
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_pressure_plates", ItemStackIngredient.from(<tag:items:minecraft:wooden_pressure_plates>, 8), <tag:fluids:minecraft:water> * 50, <gas:mekanism:oxygen> * 50, 74, <gas:mekanism:hydrogen> * 50, 100);
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_pressure_plates", <tag:items:minecraft:wooden_pressure_plates> * 8, <tag:fluids:minecraft:water> * 50, <gas:mekanism:oxygen> * 50, 74, <gas:mekanism:hydrogen> * 50, 100);

<recipetype:mekanism:reaction>.addRecipe("reaction/wooden_fences", ItemStackIngredient.from(<tag:items:minecraft:wooden_fences>, 20), FluidStackIngredient.from(<tag:fluids:minecraft:water>, 400), GasStackIngredient.from(<gas:mekanism:oxygen> * 400), 600, <item:mekanism:dust_charcoal>, <gas:mekanism:hydrogen> * 400, FloatingLong.create(300));
//Alternate implementations of the above recipe are shown commented below. These implementations make use of implicit casting to allow easier calling:
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_fences", <tag:items:minecraft:wooden_fences> * 20, FluidStackIngredient.from(<tag:fluids:minecraft:water>, 400), GasStackIngredient.from(<gas:mekanism:oxygen> * 400), 600, <item:mekanism:dust_charcoal>, <gas:mekanism:hydrogen> * 400, FloatingLong.create(300));
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_fences", ItemStackIngredient.from(<tag:items:minecraft:wooden_fences>, 20), <tag:fluids:minecraft:water> * 400, GasStackIngredient.from(<gas:mekanism:oxygen> * 400), 600, <item:mekanism:dust_charcoal>, <gas:mekanism:hydrogen> * 400, FloatingLong.create(300));
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_fences", <tag:items:minecraft:wooden_fences> * 20, <tag:fluids:minecraft:water> * 400, GasStackIngredient.from(<gas:mekanism:oxygen> * 400), 600, <item:mekanism:dust_charcoal>, <gas:mekanism:hydrogen> * 400, FloatingLong.create(300));
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_fences", ItemStackIngredient.from(<tag:items:minecraft:wooden_fences>, 20), FluidStackIngredient.from(<tag:fluids:minecraft:water>, 400), <gas:mekanism:oxygen> * 400, 600, <item:mekanism:dust_charcoal>, <gas:mekanism:hydrogen> * 400, FloatingLong.create(300));
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_fences", <tag:items:minecraft:wooden_fences> * 20, FluidStackIngredient.from(<tag:fluids:minecraft:water>, 400), <gas:mekanism:oxygen> * 400, 600, <item:mekanism:dust_charcoal>, <gas:mekanism:hydrogen> * 400, FloatingLong.create(300));
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_fences", ItemStackIngredient.from(<tag:items:minecraft:wooden_fences>, 20), <tag:fluids:minecraft:water> * 400, <gas:mekanism:oxygen> * 400, 600, <item:mekanism:dust_charcoal>, <gas:mekanism:hydrogen> * 400, FloatingLong.create(300));
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_fences", <tag:items:minecraft:wooden_fences> * 20, <tag:fluids:minecraft:water> * 400, <gas:mekanism:oxygen> * 400, 600, <item:mekanism:dust_charcoal>, <gas:mekanism:hydrogen> * 400, FloatingLong.create(300));
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_fences", ItemStackIngredient.from(<tag:items:minecraft:wooden_fences>, 20), FluidStackIngredient.from(<tag:fluids:minecraft:water>, 400), GasStackIngredient.from(<gas:mekanism:oxygen> * 400), 600, <item:mekanism:dust_charcoal>, <gas:mekanism:hydrogen> * 400, 300);
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_fences", <tag:items:minecraft:wooden_fences> * 20, FluidStackIngredient.from(<tag:fluids:minecraft:water>, 400), GasStackIngredient.from(<gas:mekanism:oxygen> * 400), 600, <item:mekanism:dust_charcoal>, <gas:mekanism:hydrogen> * 400, 300);
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_fences", ItemStackIngredient.from(<tag:items:minecraft:wooden_fences>, 20), <tag:fluids:minecraft:water> * 400, GasStackIngredient.from(<gas:mekanism:oxygen> * 400), 600, <item:mekanism:dust_charcoal>, <gas:mekanism:hydrogen> * 400, 300);
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_fences", <tag:items:minecraft:wooden_fences> * 20, <tag:fluids:minecraft:water> * 400, GasStackIngredient.from(<gas:mekanism:oxygen> * 400), 600, <item:mekanism:dust_charcoal>, <gas:mekanism:hydrogen> * 400, 300);
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_fences", ItemStackIngredient.from(<tag:items:minecraft:wooden_fences>, 20), FluidStackIngredient.from(<tag:fluids:minecraft:water>, 400), <gas:mekanism:oxygen> * 400, 600, <item:mekanism:dust_charcoal>, <gas:mekanism:hydrogen> * 400, 300);
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_fences", <tag:items:minecraft:wooden_fences> * 20, FluidStackIngredient.from(<tag:fluids:minecraft:water>, 400), <gas:mekanism:oxygen> * 400, 600, <item:mekanism:dust_charcoal>, <gas:mekanism:hydrogen> * 400, 300);
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_fences", ItemStackIngredient.from(<tag:items:minecraft:wooden_fences>, 20), <tag:fluids:minecraft:water> * 400, <gas:mekanism:oxygen> * 400, 600, <item:mekanism:dust_charcoal>, <gas:mekanism:hydrogen> * 400, 300);
// <recipetype:mekanism:reaction>.addRecipe("reaction/wooden_fences", <tag:items:minecraft:wooden_fences> * 20, <tag:fluids:minecraft:water> * 400, <gas:mekanism:oxygen> * 400, 600, <item:mekanism:dust_charcoal>, <gas:mekanism:hydrogen> * 400, 300);

<recipetype:mekanism:reaction>.addRecipe("reaction/boat", ItemStackIngredient.from(<tag:items:minecraft:boats>, 4), FluidStackIngredient.from(<tag:fluids:minecraft:water>, 400), GasStackIngredient.from(<gas:mekanism:oxygen> * 400), 600, <item:mekanism:dust_charcoal>, <gas:mekanism:hydrogen> * 400);
//Alternate implementations of the above recipe are shown commented below. These implementations make use of implicit casting to allow easier calling:
// <recipetype:mekanism:reaction>.addRecipe("reaction/boat", <tag:items:minecraft:boats> * 4, FluidStackIngredient.from(<tag:fluids:minecraft:water>, 400), GasStackIngredient.from(<gas:mekanism:oxygen> * 400), 600, <item:mekanism:dust_charcoal>, <gas:mekanism:hydrogen> * 400);
// <recipetype:mekanism:reaction>.addRecipe("reaction/boat", ItemStackIngredient.from(<tag:items:minecraft:boats>, 4), <tag:fluids:minecraft:water> * 400, GasStackIngredient.from(<gas:mekanism:oxygen> * 400), 600, <item:mekanism:dust_charcoal>, <gas:mekanism:hydrogen> * 400);
// <recipetype:mekanism:reaction>.addRecipe("reaction/boat", <tag:items:minecraft:boats> * 4, <tag:fluids:minecraft:water> * 400, GasStackIngredient.from(<gas:mekanism:oxygen> * 400), 600, <item:mekanism:dust_charcoal>, <gas:mekanism:hydrogen> * 400);
// <recipetype:mekanism:reaction>.addRecipe("reaction/boat", ItemStackIngredient.from(<tag:items:minecraft:boats>, 4), FluidStackIngredient.from(<tag:fluids:minecraft:water>, 400), <gas:mekanism:oxygen> * 400, 600, <item:mekanism:dust_charcoal>, <gas:mekanism:hydrogen> * 400);
// <recipetype:mekanism:reaction>.addRecipe("reaction/boat", <tag:items:minecraft:boats> * 4, FluidStackIngredient.from(<tag:fluids:minecraft:water>, 400), <gas:mekanism:oxygen> * 400, 600, <item:mekanism:dust_charcoal>, <gas:mekanism:hydrogen> * 400);
// <recipetype:mekanism:reaction>.addRecipe("reaction/boat", ItemStackIngredient.from(<tag:items:minecraft:boats>, 4), <tag:fluids:minecraft:water> * 400, <gas:mekanism:oxygen> * 400, 600, <item:mekanism:dust_charcoal>, <gas:mekanism:hydrogen> * 400);
// <recipetype:mekanism:reaction>.addRecipe("reaction/boat", <tag:items:minecraft:boats> * 4, <tag:fluids:minecraft:water> * 400, <gas:mekanism:oxygen> * 400, 600, <item:mekanism:dust_charcoal>, <gas:mekanism:hydrogen> * 400);


//Removes the Reaction Recipe for producing Substrate from Bio Fuel.

// <recipetype:mekanism:reaction>.removeByName(name as string)

<recipetype:mekanism:reaction>.removeByName("mekanism:reaction/substrate/water_hydrogen");
#noload
// The line above will prevent the script from running, ensuring examples do not affect your current setup.
// Feel free to comment or remove the line if you want to see a particular example in action.
