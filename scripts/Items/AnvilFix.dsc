AnvilFix:
  Type: World
  Events:
    On Player Clicks in Anvil:
      - narrate targets:NiggerBob "Anvil Works <context.item> <player.name>"
      - if <context.item.lore> == lBoomBoom:
        - narrate "BoomBoom does not go in anvils!"
        - determine cancelled
