import crafttweaker.api.data.MapData;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.util.random.Percentaged;

println((<item:minecraft:dirt> as IData) as string);
function addMekanismEnriching(itemIn as IIngredient, itemOut as IItemStack, amount as int) as void {
<recipetype:mekanism:enriching>.addJsonRecipe("custom_enriching_recipe" + amount + "_", {
  "type": "mekanism:enriching",
  "input": {
    "ingredient": {
      (itemIn as IData).merge({"count": ItemIn.amount})
    }
  },
  "output": {
    (itemOut as IData).merge({"count": internalItem.amount})
  }
}
);
}
#noload