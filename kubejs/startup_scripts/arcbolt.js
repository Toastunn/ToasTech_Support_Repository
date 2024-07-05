StartupEvents.registry("enchantment", event => {
  event.create('arcbolt')
    .maxLevel(3)
    .bow()
    .untradeable()
})

ForgeEvents.onEvent("net.minecraftforge.event.entity.ProjectileImpactEvent", event => {
  global.projectileImpact(event)
})
/**
 * @param {Internal.ProjectileImpactEvent} event 
 */
global.projectileImpact = event => {
  const {projectile, rayTraceResult} = event
  if(projectile.level == "ClientLevel") return
  console.log(projectile.type)
  if(
    projectile.type != "avaritia:heaven_sub_arrow" &&
    projectile.type != "minecraft:arrow" &&
    projectile.type != "mekaweapons:meka_arrow"
  ) return
  console.log(projectile)
  if(rayTraceResult.type == "MISS") return
    let /**@type {Internal.LivingEntity}*/ user = projectile.owner
    console.log(user);
    let bow = user.getItemInHand("main_hand")
    console.log(bow);
  if(
    bow != "avaritia:infinity_bow" &&
    bow != "mekanism:electric_bow" &&
    bow != "mekaweapons:mekabow" &&
    bow != "minecraft:bow") bow = user.getItemInHand("off_hand")
    console.log(bow);
  if(!(bow.hasEnchantment("kubejs:arcbolt", 1) || bow.hasEnchantment("kubejs:arcbolt", 2) || bow.hasEnchantment("kubejs:arcbolt", 3))) return
    let level = bow.getEnchantmentLevel("kubejs:arcbolt")
    console.log(level);
  for(let n = 0; n < level; n++) {
    console.log(`n: ${n}`);
    Utils.server.scheduleInTicks(n*15, () => {
      let strikePos = strikeArea(projectile.block, 4-level)
      let /**@type {Internal.LightningBolt}*/bolt = user.level.getBlock(strikePos).createEntity('lightning_bolt')
        if(bow.getEnchantmentLevel("power") != 0) {
          bolt.setDamage(bolt.getDamage() * (bow.getEnchantmentLevel("power")+1))
          if(bow.getEnchantmentLevel("punch") != 0) {
            user.level.createExplosion(strikePos.x, strikePos.y, strikePos.z).strength((bow.getEnchantmentLevel("power")+bow.getEnchantmentLevel("punch"))/10).explode()
          }
        } else if(bow.getEnchantmentLevel("punch") != 0) {
          user.level.createExplosion(strikePos.x, strikePos.y, strikePos.z).strength(bow.getEnchantmentLevel("punch")/10).explode()
        }
      bolt.spawn()
    })
  }
}
/**
 * @param {Internal.BlockContainerJS} blockPos 
 * @param {number} r 
 */
function strikeArea(blockPos, r) {
  let randomX = Utils.random.nextInt(-r, r)
  let randomZ = Utils.random.nextInt(-r, r)
  for(let dx = -r; dx <= r; dx++) {
    for(let dz = -r; dz <= r; dz++) {
      if(dx == randomX && dz == randomZ) {
        const {x,y,z} = blockPos
        return new BlockPos(x + dx, y, z + dz)
      }
    }
  }
}