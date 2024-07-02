let removedItems = JsonIO.read('kubejs/client_scripts/removedItems.json').get("removedItems")
ServerEvents.tags('item', event => {
  removedItems.forEach(item => {
    event.removeAllTagsFrom(item)
    })
})

ServerEvents.recipes(event => {
  removedItems.forEach(item => {
    event.remove({ output: item })
  })
})