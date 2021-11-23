CrystalBallCheck:
  Type: World
  Events:
    On player right clicks with glass:
      - if <player.item_in_hand.lore> == lCrystalBall:
        - run script:CrystalBall

CrystalBall:
  Type: Task
  Script:
    - take iteminhand
    - execute as_op "near 100"
    - flag spellCastCount:++

MobKillCheck:
  Type: World
  Events:
    On player right clicks with bone:
      - if <player.item_in_hand.lore> == lMobKill:
        - run script:MobKill

MobKill:
  Type: Task
  Script:
    - take iteminhand
    - execute as_op "butcher 10"
    - flag spellCastCount:++

SpellCheck:
  Type: Task
  Script:
    - if <player.location.regions.contains[donorspawn]>:
    - else:
      - flag spellCastCount:++
