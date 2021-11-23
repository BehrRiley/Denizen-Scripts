Demonyte:
  Type: Assignment
  Interact Scripts:
  - 1 GuardDemonyte
  Actions:
    On Assignment:
      - trigger name:proximity toggle:true radius:20
      - flag npc guardSpot:<npc.location>
      - execute as_op "npc speed 2"
      - execute as_op "npc respawn 30"

    On Spawn:
      - health state:true
      - health 500 <npc>
      - heal <npc>

    On Enter Proximity:
      - if !<npc.flag[Attacking]>:
        - run script:demonyteAttack
        - flag npc Attacking

    On Death by Player:
      - narrate "You've killed a Demonyte"
      - run script:DemonyteDropScript
      - determine no_drops
      - flag DemonyteKillCount:++

DemonyteAttack:
  Type: task
  Script:
    - if <player.location.regions.contains[enterCave]>:
      - flag npc attacking:!
      - playsound <player.location> GHAST_MOAN
      - teleport npc location:<npc.flag[guardSpot]>

    - else:
      - cast FIRE_RESISTANCE duration:15s <npc>
      - playsound <player.location> GHAST_SCREAM
      - attack
      - run script:DemonytestopAttack delay:15s
      - vulnerable state:true

DemonyteStopAttack:
  Type: Task
  Script:
    - if <npc.location.find.players.within[20].size> < 1 && <player.location.distance[<npc.flag[guardSpot]>]> > 20:
      - playsound <player.location> GHAST_MOAN
      - attack cancel
      - teleport npc location:<npc.flag[guardSpot]>
      - vulnerable state:true
      - flag npc Attacking:!

    - else if <npc.location.find.npcs.within[20].size> > 0 && <npc.location.distance[<npc.flag[guardSpot]>]> < 20:
      - run script:DemonyteAttack

    - else:
      - attack cancel
      - teleport npc location:<npc.flag[guardSpot]>
      - playsound <player.location> GHAST_MOAN
      - vulnerable state:true
      - flag npc Attacking:!

DemonyteDeath:
  Type: task
  Script:
  - if <player.equipment.helmet.lore> == "lDemonHelmet":
    - narrate "The DemonHelmet saves you."
  - else:
    - narrate "You are killed by the lack of helmet"
    - hurt 500
