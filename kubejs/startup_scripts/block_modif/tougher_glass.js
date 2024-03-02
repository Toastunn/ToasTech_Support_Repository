BlockEvents.modification(e => {
  e.modify('tougherglass:stronger_glass', block => {
    block.setExplosionResistance(3600000)
  })
})
