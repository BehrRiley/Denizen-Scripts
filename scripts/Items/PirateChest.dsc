PirateChest:
  Type: Task
  Script:
    - define chestChance <util.random.int[<1>].to[<4>]>

    - if <[chestChance]>  == 1:
      - narrate "It was full of pirate booty!"
      - execute as_op "i goldblock 3 name:Booty lore:Pirate Gold"
      - execute as_op "i diamond 3"
      - give money qty:5000

    - else if <[chestChance]> == 2:
      - narrate "It was full of explosives!"
      - execute as_op "i tnt 32"
      - give gunpowder qty:64
      - execute as_op "i creeperegg 3"
      - execute as_op "i ghastegg 1"

    - else if <[chestChance]> == 3:
      - narrate "It was full of buidling supplies!"
      - execute as_op "i obsidian 64"
      - give 98 qty:128
      - execute as_op "i ironfence 15"
      - execute as_op "i bedrock 2"

    - else if <[chestChance]> == 4:
      - narrate "It was full of Magic Spells!"
      - execute as_op "i fireball 29 name:MagicSpell lore:Fire"
      - execute as_op "i clock 5 name:MagicSpell lore:DayClock"
      - execute as_op "i 381 5 name:MagicSpell lore:EnderSeer"
