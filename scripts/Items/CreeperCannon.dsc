CreeperCannonCheck:
  Type: World
  Events:
    On Player Right Clicks with cauldron_item:
      - if <player.item_in_hand.lore> == "lCreeper Cannon":
        - if <player.flag[shotCreeper]> != null:
          - run script:CreeperDetonate instantly

        - else:
          - run script:CreeperShoot instantly determine cancelled
        }

CreeperShoot:
  Type: Task
  Script:
    - if <player.inventory.contains[383:50]>:
      - take 383:50
      - flag creeperCount:++
      - push creeper
      - flag shotCreeper:<player.location.find.entities[creeper].within[5].get[1]> duration:5s
      - playeffect <player.location> effect:LAVA visibility:20 qty:100
      - playeffect <player.location> effect:CLOUD visibility:20 qty:100
      - playsound EXPLODE  <player.location>

    - else:
      - narrate "You don't have enough Ammo"

CreeperDetonate:
  Type: Task
  Script:
    - explode power:2 <player.flag[shotcreeper].as_entity.location> breakblocks
    - remove <player.flag[shotCreeper]>
    - flag shotCreeper:!
