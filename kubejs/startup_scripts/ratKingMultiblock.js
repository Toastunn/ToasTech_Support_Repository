let $PatchouliAPI = Java.loadClass('vazkii.patchouli.api.PatchouliAPI').get()
let $Character = Java.loadClass('java.lang.Character')

StartupEvents.postInit(event => {
  $PatchouliAPI.registerMultiblock(
    'toastech:rat_king_summon',
    $PatchouliAPI.makeMultiblock([
      ['       ', '       ', '       ', '   0   ', '       ', '       ', '       '],
      ['       ', '       ', '       ', '   G   ', '       ', '       ', '       '],
      ['       ', '       ', '   G   ', '  GGG  ', '   G   ', '       ', '       '],
      ['       ', '       ', '   G   ', '  GGG  ', '   G   ', '       ', '       '],
      ['CCCCCCC', 'CCCCCCC', 'CCCCCCC', 'CCCCCCC', 'CCCCCCC', 'CCCCCCC', 'CCCCCCC']
    ],
    new $Character('0'),
    Blocks.DIAMOND_BLOCK,
    new $Character('G'),
    Blocks.GOLD_BLOCK,
    new $Character('C'),
    Block.id('rats:block_of_cheese').blockState.block,
    )
  )
})