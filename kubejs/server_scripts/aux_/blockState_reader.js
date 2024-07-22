BlockEvents.rightClicked(event => {
  const {block, player, item} = event
  if(item.id == "create_things_and_misc:empty_card") {
    if(!player.isShiftKeyDown()) {
      let state = block.getBlockState()
      player.tell(Text.of(state).clickCopy(state).hover("Click to copy"))
      console.log(state)
    } else {
      let state = block.getProperties()
      player.tell(Text.of(state).clickCopy(state).hover("Click to copy"))
      console.log(state)
    }
  }
})