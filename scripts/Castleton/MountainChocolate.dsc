MountainTopCheck:
  Type: World
  Events:
    On Player Breaks cocoa:
      - if <player.location.y> > 220:
        - if <player.location.biome> == JUNGLE_MOUNTAINS OR <player.location.biome> == JUNGLE_HILLS OR <player.location.biome> == JUNGLE:
          - narrate "These are high quality cocoa beans"
          - drop cocoa_beans[display_name=Chocolate;lore=MountainTop]
          - modifyblock <context.location> air
          - determine cancelled

      - else:
