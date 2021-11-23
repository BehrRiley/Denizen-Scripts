GraveCheck:
  Type: World
  Events:
    On Player Breaks soul_sand:
      - if <player.location.regions.contains[graveyardquest]>:
        - narrate "<&e><&l>You begin digging"
        - run script:TimGrave delay:3s
        - determine cancelled

      - else if <player.location.regions.contains[graveEnter]>:
        - narrate "<&e><&l>You begin digging"
        - run script:FallThrough delay:1s
        - determine cancelled

      - else if <player.location.regions.contains[NewtownGraveYard]>:
        - if <player.flag[ghostDone]>:
          - narrate "<&e><&l>You begin Digging..."
          - run script:DigTimer

        - else:
          - narrate "Dont go digging up people's graves" determine cancelled
        }

TimGrave:
  Type: Task
  Script:
    - if <player.world.moon_phase> == 1:
      - teleport 75 <player.location>
      - narrate "<&e><&l>A ghost appears!"

    - else:
      - narrate "<&e><&l>The Grave is empty.... The soil seems recently disturbed and the inscription on the gave reads...."
      - wait duration:1s
      - narrate "<&e><&l>Cookies in the moonlight..."

FallThrough:
  Type: Task
  Script:
    - teleport <server.flag[graveEnter]>
    - narrate "<&e><&l>You fall through!"
    - if !<player.flag[ghostDone]>:
      - flag ghostStart

DigTimer:
  Type: Task
  Script:
    - if <player.flag[graveTimer]>:
      - narrate "<&e><&l>You dig but find nothing"

    - else:
      - flag gravesLooted:++
      - narrate "<&e><&l>You dig up a casket..."
      - execute as_server "give <player.name> chest 1 name:Casket lore:Graveyard"
      - flag graveTimer duration:3h

ChestListener:
  Type: World
  Events:
    On Player Right Clicks With Chest:
      - if <player.item_in_hand.lore> == lGraveyard:
        - take iteminhand
        - narrate "<&e><&l>You open the casket..."
        - run script:GraveRewards

      - else if <player.item_in_hand.lore> == lDiamondArmor:
        - take iteminhand
        - execute as_op "i 310 1"
        - execute as_op "i 311 1"
        - execute as_op "i 312 1"
        - execute as_op "i 313 1"
        - narrate "<&e><&l>You open the chest and find some Diamond Armor"

      - else if <player.item_in_hand.lore> == lIronArmor:
        - take iteminhand
        - narrate "<&e><&l>You open the chest and find some Iron Armor"
        - execute as_op "i 306 1"
        - execute as_op "i 307 1"
        - execute as_op "i 308 1"
        - execute as_op "i 309 1"

      - else if <player.item_in_hand.lore> == lChainArmor:
        - take iteminhand
        - narrate "<&e><&l>You open the chest and find some Chain Armour"
        - execute as_op "i 302 1"
        - execute as_op "i 303 1"
        - execute as_op "i 304 1"
        - execute as_op "i 305 1"

GraveRewards:
  Type: Task
  Script:
    - define value <util.random.int[<1>].to[<20>]>

    - if <[value]> == 20:
      - run script:RareChance

    - else if <[value]> > 15:
      - run script:CoolChance

    - else if <[value]> > 9:
      - run script:AverageChance

    - else:
      - run script:ShitChance


RareChance:
  Type: Task
  Script:
    - define rollSpin <util.random.int[<1>].to[<500>]>
    - if <[rollSpin]> == 500:
      - narrate "<&e><&l>You find.... Bawb!"

    - else if <[rollSpin]> > 300:
      - narrate "<&e><&l>You find some diamonds"
      - give diamond qty:<util.random.int[<3>].to[<7>]>

    - else if <[rollSpin]> > 50:
      - define moneyAmount <util.random.int[<500>].to[<2500>]>
      - narrate "<&e><&l>You find $<[moneyAmount]> inside."
      - give money qty:<[moneyAmount]>

    - else:
      - narrate "<&e><&l>You find bones..."
      - give bone qty:<util.random.int[<3>].to[<7>]>

CoolChance:
  Type: Task
  Script:
    - define rollSpin <util.random.int[<1>].to[<500>]>
    - if <[rollSpin]> > 480:

    - else if rollSpin > 300:
      - narrate "<&e><&l>You find some gold"
      - give gold_ingot qty:<util.random.int[<3>].to[<7>]>

    - else if <[rollSpin]> > 50:
      - define moneyAmount <util.random.int[<100>].to[<1200>]>
      - narrate "<&e><&l>You find $<[moneyAmount]> inside."
      - give money qty:<[moneyAmount]>

    - else:
      - narrate "<&e><&l>You find bones..."
      - give bone qty:<util.random.int[<3>].to[<7>]>

AverageChance:
  Type: Task
  Script:
    - define rollSpin <util.random.int[<1>].to[<500>]>
    - if <[rollSpin]> > 480:

    - else if <[rollSpin]> > 300:
      - narrate "<&e><&l>You find some iron"
      - give iron_ingot qty:<util.random.int[<3>].to[<7>]>

    - else if <[rollSpin]> > 50:
      - define moneyAmount <util.random.int[<100>].to[<500>]>
      - narrate "<&e><&l>You find $<[moneyAmount]> inside."
      - give money qty:<[moneyAmount]>

    - else:
      - narrate "<&e><&l>You find bones..."
      - give bone qty:<util.random.int[<3>].to[<7>]>

ShitChance:
  Type: Task
  Script:
    - define rollSpin <util.random.int[<1>].to[<500>]>
    - if <[rollSpin]> > 480:

    - else if <[rollSpin]> > 300:
      - narrate "<&e><&l>You find some old shoes..."
      - give leatherboots

    - else if <[rollSpin]> > 50:
      - define moneyAmount <util.random.int[<1>].to[<50>]>
      - narrate "<&e><&l>You find $<[moneyAmount]> inside."
      - give money qty:<[moneyAmount]>

    - else:
      - narrate "<&e><&l>It's full of poison gas!"
      - cast poison <player>
