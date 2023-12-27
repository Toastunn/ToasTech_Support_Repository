//make sure to delete anything in here when you're done.
function addAlloySmelting(name as string, energy as int, exp as float, input as IIngredientWithAmount[], output as IItemStack) as void {
var listIn = input as stdlib.List<IIngredientWithAmount>;
<recipetype:enderio:alloy_smelting>.addJsonRecipe("name", {
  "type": "enderio:alloy_smelting",
  "energy": energy,
  "experience": exp,
  "inputs": [
    (listIn[0] as IData),
    (listIn[1] as IData),
    (listIn[2] as IData),
  ],
  "result": [
    output as IData
  ]
});
}

addAlloySmelting("alloying_the_infinite", 48000, 3, [(<item:kubejs:ingot_of_infinity> * 1), (<item:kubejs:crystal_of_desolation> * 1), (<item:mekanism:alloy_atomic> * 1)], <item:kubejs:alloy_of_infinity>);
#noload //just to make sure that nothing in here loads.