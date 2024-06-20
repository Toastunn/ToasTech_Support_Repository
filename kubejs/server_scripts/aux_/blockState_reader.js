BlockEvents.rightClicked(event => {
  const {block, player, item} = event
  if(item.id == "create_things_and_misc:empty_card") {
    let state = block.getBlockState()
    player.tell(Text.of(state).clickCopy(state).hover("Click to copy"))
    console.log(state)
  }
})