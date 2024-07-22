let $ResourceKey = Java.loadClass("net.minecraft.resources.ResourceKey")
let DAMAGE_TYPE = $ResourceKey.createRegistryKey("damage_type")
const $ClientLevel = Java.loadClass("net.minecraft.client.multiplayer.ClientLevel")
function getDamageSource(level, damageType) {
  const resourceKey = $ResourceKey.create(DAMAGE_TYPE, Utils.id(damageType))
  const holder = level.registryAccess().registryOrThrow(DAMAGE_TYPE).getHolderOrThrow(resourceKey)
  return new DamageSource(holder)
}

EntityJSEvents.attributes(event => {
  event.modify("avaritia:heaven_sub_arrow", attribute => {
    attribute.add('minecraft:generic.knockback_resistance', 100)
  })
})

StartupEvents.registry("enchantment", event => {
  event.create('arcbolt')
    .maxLevel(3)
    .bow()
    .untradeable()
  event.create('attraction')
    .maxLevel(3)
    .bow()
    .untradeable()
  event.create('repulsion')
    .maxLevel(3)
    .bow()
    .untradeable()
    .checkCompatibility(/**@param {ResourceLocation} rl*/rl => {
      if(rl == "kubejs:attraction") {
        return false
      }
      return true
    })
})

ForgeEvents.onEvent("net.minecraftforge.event.entity.ProjectileImpactEvent", event => {
  global.projectileImpact(event)
})



try {
  let serverOwner;

  /**
   * @param {Internal.ProjectileImpactEvent} event 
   */

  global.projectileImpact = (event) => {
    const {projectile, rayTraceResult} = event
    if(
      projectile.type != "avaritia:heaven_sub_arrow" &&
      projectile.type != "minecraft:arrow" &&
      projectile.type != "mekaweapons:meka_arrow"
    ) return
      console.log(`1, ${projectile.type}, ${projectile.pos}`);
    if(rayTraceResult.type == "MISS") return

    if(!projectile.level.isClientSide()) serverOwner = projectile.owner

    let /**@type {Internal.LivingEntity}*/ user = projectile.owner ?? serverOwner

    let bow = user.getItemInHand("main_hand")
    if(
      bow.id != "avaritia:infinity_bow" &&
      bow.id != "mekanism:electric_bow" &&
      bow.id != "mekaweapons:mekabow" &&
      bow.id != "minecraft:bow"
    ) bow = user.getItemInHand("off_hand")
    let arcbolt = bow.getEnchantmentLevel("kubejs:arcbolt")
    let attraction = bow.getEnchantmentLevel("kubejs:attraction")
    let repulsion = bow.getEnchantmentLevel("kubejs:repulsion")
    let power = bow.getEnchantmentLevel("power")
    let punch = bow.getEnchantmentLevel("punch")
    let hasPower = power != 0
    let hasPunch = punch != 0
    let level = projectile.level
    let negateDamage = getDamageSource(level, "kubejs:nullexplosion");
    if(arcbolt != 0) {
      for(let n = 0; n < arcbolt; n++) {
        Utils.server.scheduleInTicks(n*15, () => {
          let strikePos = strikeArea(projectile.block, 4-arcbolt)
          if(hasPunch) {
            if(projectile.level != "ClientLevel") {
              let explosion = level.explode(user, hasPower ? null : negateDamage, null, strikePos.x, strikePos.y, strikePos.z, hasPower ? (power + punch)/10 : punch/3, false, "none", true)
              explosion.explode()
            }
            level.playLocalSound(strikePos.x, strikePos.y, strikePos.z, 'entity.generic.explode', 'blocks', 3, Utils.random.nextFloat(0.56, 0.84), false)
            level.addParticle('minecraft:explosion_emitter', strikePos.x, strikePos.y, strikePos.z, 0, 0, 0)
          }
          let {x,y,z} = strikePos
          //for player knockback
          let knockbackStrength = (power + punch)/5
          let maxUpwardStrength = 1.0 // Maximum upward strength
          let baseUpwardStrength = 0.1 // Minimum upward strength
          let entities = level.getEntitiesWithin(AABB.of(x-3, y-3, z-3, x+3, y+3, z+3))
          entities.forEach(entity => {
            let distanceX = x - entity.x
            let distanceY = y - entity.y
            let distanceZ = z - entity.z
            let distance = Math.sqrt(distanceX * distanceX + distanceZ * distanceZ)
            if (distance > 0) {
              let normalizedX = distanceX / distance
              let normalizedZ = distanceZ / distance
              console.log(normalizedX, normalizedZ, knockbackStrength);
              if(entity.type == "minecraft:player") {
                entity.knockback(knockbackStrength, normalizedX, normalizedZ)
                let upwardStrength = baseUpwardStrength
                if (distanceY < 0) {
                  upwardStrength = Math.min(maxUpwardStrength, baseUpwardStrength - distanceY / distance * knockbackStrength)
                }
                entity.addMotion(0, upwardStrength, 0)
              }
            }
          })
          if(!projectile.level.isClientSide()) {
            let /**@type {Internal.LightningBolt}*/bolt = level.getBlock(strikePos).createEntity('lightning_bolt')
            if(hasPower) {
              bolt.setDamage(bolt.getDamage() * (power + 1))
            }
            bolt.spawn()
          }
        })
      }
    }
    if(attraction != 0) {
      let x1 = projectile.pos.x()
      let y1 = projectile.pos.y()
      let z1 = projectile.pos.z()
      //for player knockback
      let knockbackStrength = (power/7.5)+0.3*attraction
      let maxUpwardStrength = 10*attraction // Maximum upward strength
      let entities = level.getEntitiesWithin(AABB.of(x1-(4*attraction), y1-(4*attraction), z1-(4*attraction), x1+(4*attraction), y1+(4*attraction), z1+(4*attraction)))
      entities.forEach(entity => {
        if(projectile.pos.x() == entity.x  && projectile.pos.z() == entity.z) {
          y1 = projectile.blockPosition().y-2
        }
        if(entity instanceof $LivingEntity && entity.level.isClientSide()) {
          console.log(projectile.pos, entity.pos)
          let distanceX = entity.x - x1
          let distanceY = entity.y - y1
          let distanceZ = entity.z - z1
          console.log(distanceY)
          let normalizedX = -(distanceX * knockbackStrength) / 2
          let normalizedY = -(distanceY * knockbackStrength) / 4.5
          let normalizedZ = -(distanceZ * knockbackStrength) / 2
          let upwardStrength = Math.min(maxUpwardStrength, normalizedY)
            console.log("norms", normalizedX, normalizedY, normalizedZ);
          entity.addMotion(normalizedX, upwardStrength, normalizedZ)
        }
      })
    }
    if(repulsion != 0) {
      let x2 = projectile.pos.x()
      let y2 = projectile.pos.y()
      let z2 = projectile.pos.z()
      //for player knockback
      let knockbackStrength = ((power + punch)/5)+0.3*repulsion
      let maxUpwardStrength = 10*repulsion // Maximum upward strength
      let baseUpwardStrength = 0.1 // Minimum upward strength
      let entities = level.getEntitiesWithin(AABB.of(x2-(4*repulsion), y2-(4*repulsion), z2-(4*repulsion), x2+(4*repulsion), y2+(4*repulsion), z2+(4*repulsion)))
      entities.forEach(entity => {
        if(projectile.pos.x() == entity.x  && projectile.pos.z() == entity.z) {
          y2 = projectile.blockPosition().y-2
        }
        if(entity instanceof $LivingEntity && entity.level.isClientSide()) {
          console.log("pos", x2, y2, z2);
          let distanceX = x2 - entity.x
          let distanceY = y2 - entity.y
          let distanceZ = z2 - entity.z
          let distance = Math.sqrt(distanceX * distanceX + distanceZ * distanceZ)
          let upwardStrength = baseUpwardStrength
          if (distance > 0) {
            let normalizedX = distanceX / distance
            let normalizedZ = distanceZ / distance
            console.log(normalizedX, normalizedZ, knockbackStrength);
            if(entity.type == "minecraft:player") {
              entity.knockback(knockbackStrength, normalizedX, normalizedZ)
            }
          }
          if (distanceY < 0) {
            upwardStrength = Math.min(maxUpwardStrength, baseUpwardStrength - distanceY / (distance > 0 ? distance : 0.0001) * knockbackStrength)
          }
          console.log("up", distanceY / (distance > 0 ? distance : 0.0001) * knockbackStrength, distanceY);
          entity.addMotion(0, upwardStrength, 0)
        }
      })
    }
  } 
} catch (error) {
  console.log(`Caught error: ${error}`)
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