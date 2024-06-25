const $Gas = Java.loadClass('mekanism.api.chemical.gas.Gas')
const $GasBuilder = Java.loadClass('mekanism.api.chemical.gas.GasBuilder')

StartupEvents.registry('mekanism:gas', event => {
  let gasMap = [
    ['hyper_experience_gas', 0x5eddfd],
    ['gaseous_infinity', 0x7d4daa],
    ['fire_vapor', 0xDDC9C9],
    ['dragons_breath', 0xa317a3],
    ['pulsating_gas', 0x56ac68],
    ['vibrant_gas', 0xe0ea6a],
    ['void_gas', 0x000000],
    ['hydrogen_sulfide', 0x21f1f1f1]
  ]
  gasMap.forEach(gasPair => {
    event.createCustom(gasPair[0], () => new $Gas($GasBuilder.builder().tint(gasPair[1])))
  })
})