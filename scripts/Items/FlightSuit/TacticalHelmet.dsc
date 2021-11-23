HelmetEquip:
  Type: World
  Events:
    On Player Right Clicks With leather_helmet:
      - if <player.item_in_hand.lore> == lTacticalHelmet:
        - give <player.equipment.helmet>
        - equip head:air
        - take <context.item>
        - narrate "You equip the Tactical Helmet"
        - run script:FlightHelmetToggle
        - equip

FlightHelmetCheck:
  Type: Task
  Script:
    - if <player.equipment.Helmet.lore> == lTacticalHelmet:
      - run script:FlightHelmetToggle

    - else:
      - narrate "You have removed your Helmet"
      - cast night_vision remove

FlightHelmetToggle:
  Type: Task
  Script:
    - playeffect <player.location> CLOUD qty:100
    - cast NIGHT_VISION duration:25s
    - cast WATER_BREATHING duration:15s
    - run script:FlightHelmetCheck delay:9s
