Halli:
  Type: Assignment
  Interact Scripts:
  - 1 collapseFix

CollapseFix:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[turretDone]>:

        - else if <player.flag[flagRaiser]>:
          - switch <npc.location.find.blocks[lever].within[5].get[1]> state:on duration:3s
          - chat "<&e><&l>Get to the top of the tower and raise our flag"

        - else if <player.flag[mineCleared]>:
          - chat "<&e><&l>Get into that castle and kill the invaders!"
          - switch <npc.location.find.blocks[lever].within[5].get[1]> state:on duration:3s

        - else if <player.flag[needsTnT]> && <player.inventory.qty[TnT]> > 99:
          - chat "<&e><&l>That's exactly what we needed... Stand back!"
          - wait 3
          - take tnt qty:100
          - flag mineCleared
          - flag needsTnT:!
          - run script:ClearMine

        - else if <player.flag[needsTnT]>:
          - chat "<&e><&l>Like I said <player.name>.... It's 100 TnT"
          - switch <npc.location.find.blocks[lever].within[5].get[1]> state:on duration:3s

        - else if <player.flag[castleMineStarted]>:
          - chat "<&e><&l>Looks like we've had a collapse... Im going to need about 100 TnT to get this place clear again."
          - switch <npc.location.find.blocks[lever].within[5].get[1]> state:on duration:3s
          - flag castleMineStarted:!
          - flag needsTnT

        - else:
          - chat "<&e><&l>How the fuck did you get in here?"

ClearMine:
  Type: Task
  Script:
    - playeffect HUGE_EXPLOSION <player.location.add[0,0,-10]> qty:25
    - playsound EXPLODE <player.location>
    - playeffect HUGE_EXPLOSION <player.location.add[0,0,-10]> qty:25
    - playsound EXPLODE <player.location>
    - playeffect HUGE_EXPLOSION <player.location.add[0,0,-10]> qty:25
    - playsound EXPLODE <player.location>
    - execute as_npc "/replacenear 75 gravel air"

MineCollapse:
  Type: Task
  Script:
    - playeffect HUGE_EXPLOSION <player.location.add[0,0,-10]> qty:25
    - playsound EXPLODE <player.location>
    - playeffect HUGE_EXPLOSION <player.location.add[0,0,-10]> qty:25
    - playsound EXPLODE <player.location>
    - playeffect HUGE_EXPLOSION <player.location.add[0,0,-10]> qty:25
    - playsound EXPLODE <player.location>
    - execute as_npc "/schem load gravelceiling"
    - execute as_npc "/paste -o"
    - execute as_npc "/paste -o"
    - execute as_npc "/paste -o"
    - execute as_npc "/replacenear 3 gravel air"
