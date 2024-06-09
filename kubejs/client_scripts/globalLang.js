ClientEvents.lang("en_us", event => {
  let lang = JsonIO.read('kubejs/client_scripts/globalLang.json')
  lang.forEach(key => {
    let name = JsonIO.read('kubejs/client_scripts/globalLang.json').get(key)
    event.add(key, name)
  })
})