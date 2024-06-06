PlayerEvents.chat(e => {
  let message = e.getMessage()
  e.player.persistentData.renameMessage = message
})

ItemEvents.rightClicked(event => {
  if(event.player.offHandItem == "ae2:name_press") {//checks if the player has "ae2:name_press" in their offhand
    if(!event.player.mainHandItem) return //checks if the player is holding anything in their main hand (may be redundant)
    if(event.hand == 'OFF_HAND') return //runs the code only on the main hand item
      let item = event.player.mainHandItem
      let mod = item.getMod()
      let key1 = item.getDescriptionId()
      let key2 = item.getDescriptionId()
      let renameMessage = event.player.persistentData.renameMessage
      let renameMessage2;

        //if a message was sent by you
        if(renameMessage) {
          //if you are holding a fluid tank, get the liquid in the tank
          if(item == "mekanism:creative_fluid_tank" && event.player.mainHandItem.hasNBT()) {
            let liquid = event.player.mainHandItem.nbt.mekData.FluidTanks[0].stored.FluidName
            mod = liquid.split(":")[0]
            key1 = "fluid." + Fluid.getId(liquid).toLanguageKey()
            event.player.tell(Text.yellow('Recommend looking at the lang'))
          }
          //if you are holding a gas tank, get the gas in the tank
          else if(item == "mekanism:creative_chemical_tank" && event.player.mainHandItem.hasNBT()) {
            let gas = event.player.mainHandItem.nbt.mekData.GasTanks[0].stored.gasName
            mod = gas.split(":")[0]
            key1 = "gas." + Fluid.getId(gas).toLanguageKey()
            event.player.tell(Text.yellow('Recommend looking at the lang'))
          }
          //if you are holding a bucket, get the liquid in the bucket
          else if(item.id.includes('_bucket')) {
            let bucket = event.player.mainHandItem.id
            let liquid = bucket.replace('_bucket', '')
            mod = liquid.split(':')[0]
            key1 = "fluid." + liquid.replace(":", ".")
            renameMessage2 = renameMessage + " Bucket"
            event.player.tell(Text.yellow('Recommend looking at the lang'))
          }

          let oldLang = JsonIO.read(`kubejs/assets/${mod}/lang/en_us.json`)
            //if the file wasn't found
            if(!oldLang) {
              let tempLang = {"item.minecraft.stone": "Stone"}
              JsonIO.write(`kubejs/assets/${mod}/lang/en_us.json`, tempLang)
              console.log(`Failed reading file: kubejs/assets/${mod}/lang/en_us.json. Creating new file...`)
            }

            //add the lang "key1": "renameMessage"
            oldLang.put(key1, renameMessage)
            //for buckets
            if(renameMessage2) oldLang.put(key2, renameMessage2)

            //write the lang to the file
            JsonIO.write(`kubejs/assets/${mod}/lang/en_us.json`, oldLang)

        } else event.player.tell(Text.red('[SERVER] reminds you to write something.'))
  }
})