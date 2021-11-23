MoonBootEquip:
  Type: World
  Events:
    On Player Right Clicks With leather_boots:
      - if <player.item_in_hand.lore> == lMoonBoots:
        - give <player.equipment.boots>
        - equip boots:air
        - take <context.item>
        - narrate "You equip the moon boots"
        - run script:BootsToggle
        - equip

BootsCheck:
  Type: Task
  Script:
    - if <player.equipment.boots.lore> == lMoonBoots:
      - run script:BootsToggle

    - else:
      - narrate "You have removed your boots"
      - cast jump remove

BootsToggle:
  Type: Task
  Script:
    - playeffect <player.location> CLOUD qty:100
    - cast jump duration:15s power:3
    - run script:BootsCheck delay:9s
