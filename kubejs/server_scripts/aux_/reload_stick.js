ItemEvents.rightClicked("enderio:nutritious_stick", event => {
  if(event.player.isCrouching()) {
    event.server.runCommand("kjs reload client_scripts")
    event.server.runCommand("reload")
  } else if(!event.player.isCrouching()) {
    event.server.runCommand("kjs reload client_scripts")
    event.server.runCommand("kjs reload server_scripts")
    event.server.runCommand("kjs reload startup_scripts")
  }
})