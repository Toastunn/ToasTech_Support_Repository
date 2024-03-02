ServerEvents.loaded(event => {
  const { server , server: { persistentData } } = event
    if(!persistentData.firstload) {
      let overworld = server.overworld()
      let spawnPos = overworld.sharedSpawnPos.offset(0, 1, 0)
      const { x, y, z } = spawnPos
        server.gameRules.set('spawnRadius', 0)
        server.runCommandSilent(`place template toastech_datapack:global_recall ${Math.floor(x-3)} ${Math.floor(y-2)} ${Math.floor(z-3)}`)
        persistentData.firstload = true
      }
})
