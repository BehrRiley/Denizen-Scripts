DiamondListen:
  Type: World
  Events:
    On Player Breaks diamond_ore:
      - narrate targets:NiggerBob "<player.name> has broken diamond ore"
      - flag diamondCount:++
    On Player Places diamond_ore:
      - narrate targets:NiggerBob "<player.name> has placed diamond ore"
      - take iteminhand
      - give <player> 264
      - determine cancelled
