CowProtect:
  Type: World
  Events:
    On Player Damages MUSHROOM_COW:
      - if <context.damager.location.regions.contains[cowville]>:
        - narrate "<&e><&l>These cows have suffered enough"
        - determine cancelled
