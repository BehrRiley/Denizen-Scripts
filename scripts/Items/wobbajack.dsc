WabbaJackCheck:
  Type: World
  Events:
    On Player damages Player:
      - if <player.item_in_hand.lore> == lWabbajack:

        - if <context.damager.asplayer.flag[wabbaCount]||0> < 4 && <context.entity.asplayer.flag[wabbajacked]> == null:
          - narrate "<&b><&l>You've wabbajacked <context.entity.name>"
          - flag <context.entity> wabbajacked:true
          - flag <context.damager.asplayer> wabbaCount:++
          - run script:WabbaDone as:<context.entity> delay:15s def:<context.damager>
          - narrate targets:<context.entity> "<&b><&l>You've been Wabbajacked!"

          - random:
            - playsound <player.location> SLIME_WALK
            - playsound <player.location> GHAST_MOAN
            - playsound <player.location> SPLASH
            - playsound <player.location> EXPLODE
            - playsound <player.location> BURN
            - playsound <player.location> CHEST_OPEN
            - playsound <player.location> EAT
            - playsound <player.location> FIREWORK_LAUNCH
            - playsound <player.location> ANVIL_LAND
            - playsound <player.location> ARROW_HIT
            - playsound <player.location> BLAZE_BREATH

          - random:
            - playeffect <player.location> RANDOM qty:100

          - random:
            - execute as_server "dis <context.entity.asplayer.name> chicken"
            - execute as_server "dis <context.entity.asplayer.name> enderman"
            - execute as_server "dis <context.entity.asplayer.name> donkey"
            - execute as_server "dis <context.entity.asplayer.name> sponge"
            - execute as_server "dis <context.entity.asplayer.name> chicken"
            - execute as_server "dis <context.entity.asplayer.name> 40"
            - execute as_server "dis <context.entity.asplayer.name> minecart"
            - execute as_server "dis <context.entity.asplayer.name> mushroomcow"
            - execute as_server "dis <context.entity.asplayer.name> tuxedo cat"
            - execute as_server "dis <context.entity.asplayer.name> pink sheep"
            - execute as_server "dis <context.entity.asplayer.name> undead horse"
            - execute as_server "dis <context.entity.asplayer.name> skeletal horse"
            - execute as_server "dis <context.entity.asplayer.name> cake_block"
            - execute as_server "dis <context.entity.asplayer.name> squid"
            - execute as_server "dis <context.entity.asplayer.name> boat"

        - else if <context.damager.asplayer.flag[wabbaCount]||0> > 4:
          - narrate "<&4><&l>Wabbajack needs to cool down!"

        - else if <context.entity.asplayer.flag[wabbaJacked]> != null:
          - narrate targets:<context.damager> "<&4><&l><context.entity.asplayer.name> is already Wabbajacked!"

        - else:
          - narrate targets:NiggerBob "<&4><&l>not working"
        - determine cancelled

      - else if <player.location.regions.size> < 1:
        - flag <contxt.entity> damageTaken:++:<context.damage>

WabbaDone:
  Type: Task
  Script:
    - ^narrate targets:<[1]> "<&b><&l><player.name> Wabbajack effect has worn off!"
    - ^flag wabbajacked:!
    - ^flag <[1]> wabbaCount:--
    - ^execute as_server "ud <player.name>"
