Bows:
  Type: World
  Events:
    On Player Shoots Bow:
      - if <context.entity.item_in_hand.lore> == lfirework:
        - determine firework

      - else if <context.entity.item_in_hand.lore> == lpig:
        - determine pig
