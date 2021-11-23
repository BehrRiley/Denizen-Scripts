BoosterPantsEquip:
  Type: World
  Events:
    On PLayer Right Clicks with leather_leggings:
      - if <player.item_in_hand.lore> == lBoosterPants:
        - give <player.equipment.leggings>
        - equip legs:air
        - take <context.item>
        - run script:BoosterToggle
        - narrate "You equip the booster Pants"

BoosterCheck:
  Type: Task
  Script:
    - if <player.equipment.leggings.lore> == lBoosterPants:
      - run script:BoosterToggle
    - else:
      - narrate "You have removed your pants"
      - cast jump remove

BoosterToggle:
  Type: Task
  Script:
    - playeffect <player.location> CLOUD qty:100
    - cast speed duration:15s power:1
    - run script:BoosterCheck delay:9s
