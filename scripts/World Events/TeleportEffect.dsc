TeleportEffect:
  Type: World
  Events:
    On Player Teleports:
      - if <player.group[guardian]>:
        - playeffect random <player.location> qty:100
