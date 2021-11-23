AltarClick:
  Type: World
  Events:
    On Player Right Clicks emerald_block:
      - define EnchantCount <context.location.find.blocks[enchantment_table].within[2].size>
      - define GoldBlockCount <context.location.find.blocks[gold_block].within[2].size>

      - if <server.flag[altar_locations].contains[<context.location>]>:
        - run script:AltarCheck instantly
        - flag altarInteractSpot:<context.location>

      - else if <[EnchantCount]> > 0 && <[GoldBlockCount]> > 1:
        - run script:PlayerAltar instantly
        - determine cancelled

AltarCheck:
  Type: Task
  Script:
    - narrate "<&5><&l>You Pray at the Altar!"

    - if <player.flag[altarInteractSpot]> == <server.flag[BuilderAltar]> && !<player.flag[BuilderAltar]>:
      - flag BuilderAltar
      - narrate "<&5><&l>OThe Builder Gods Shine They're Bounty on your stupid ass!"
      - flag AltarPrayerCount:++
      - give item:Stone_Brick qty:256
      - give item:Redstone_Block qty:10
      - give item:123 qty:10
      - give item:log qty:32
      - give item:327 qty:16

    - else if <player.flag[altarInteractSpot]> == <server.flag[NoobAltar]> && !<player.flag[NoobAltar]>:
      - flag NoobAltar
      - flag AltarPrayerCount:++
      - give money qty:5000
      - firework location:<player.location> power:0 type:Random primary:red fade:yellow
      - firework location:<player.location> power:0 type:Random primary:blue fade:purple
      - firework location:<player.location> power:0 type:Random primary:purple fade:pink
      - firework location:<player.location> power:0 type:Random primary:red fade:yellow
      - firework location:<player.location> power:0 type:Random primary:blue fade:purple
      - firework location:<player.location> power:0 type:Random primary:purple fade:pink

    - else if <player.flag[altarInteractSpot]> == <server.flag[BanditAltar]> && !<player.flag[BanditAltar]>:
      - narrate "<&6><&l>You have found the altar of the PeePeeBandits! You are given mcmmo credits!"
      - flag BanditAltar
      - playsound enderman_scream location:<player.location>
      - execute as_server "addcredits <player.name> 25"
      - flag AltarPrayerCount:++
      - firework location:<player.location> power:0 type:Random primary:red fade:yellow
      - firework location:<player.location> power:0 type:Random primary:blue fade:purple
      - firework location:<player.location> power:0 type:Random primary:purple fade:pink

    - else if <player.flag[altarInteractSpot]> == <server.flag[wreckAltar]> && !<player.flag[wreckAltar]>:
      - narrate "<&b><&l>You have found the altar of the Ship Wreck! You find an old pirate's chest!"
      - flag wreckAltar
      - playsound splash location:<player.location>
      - execute as_op "i chest 1 name:Chest lore:Pirate"
      - flag AltarPrayerCount:++
      - firework location:<player.location> power:0 type:Random primary:red fade:yellow
      - firework location:<player.location> power:0 type:Random primary:blue fade:purple
      - firework location:<player.location> power:0 type:Random primary:purple fade:pink

    - else if <player.flag[altarInteractSpot]> == <server.flag[lavaAltar]> && !<player.flag[lavaAltar]>:
      - narrate "<&6><&l>You have found the altar of Fire! You find an you get some shit!"
      - flag lavaAltar
      - playsound fizz location:<player.location>
      - execute as_op "i fireball 10 name:MagicSpell lore:Fire"
      - execute as_op "i fireball 10 name:MagicSpell lore:Fire"
      - flag AltarPrayerCount:++
      - firework location:<player.location> power:0 type:Random primary:red fade:yellow
      - firework location:<player.location> power:0 type:Random primary:blue fade:purple
      - firework location:<player.location> power:0 type:Random primary:purple fade:pink
      - random:
        - execute as_op "i enchantedbook 1 fireprotection:4"
        - execute as_op "i enchantedbook 1 flame:1"
        - execute as_op "i enchantedbook 1 fireaspect:2"

    - else:
      - narrate "<&4><&l>You have already prayed at this altar"

PlayerAltar:
  Type: Task
  Script:
    - if <player.item_in_hand.skin> != null:

      - if <player.group[Priest]>:
        - define sacrificePlayer <player.item_in_hand.skin>

        - if <player.flag[lasthead]> == <[sacrificePlayer]>:
          - flag sameHead:++

        - else:
          - flag sameHead:0

        - if <player.flag[sameHead]> > 3:
          - take iteminhand
          - narrate "<&4><&l>How dare you sacrifice the same player..."
          - strike <player.location>
          - narrate "<&4><&l>You lose favor with the gods"
          - flag sacrificeCount:-:10
          - queue stop
        
        - if <[sacrificePlayer]> == "PeePeeBandit" && <player.inventory.qty[bone]> > 4:
          - take iteminhand
          - take bone qty:5
          - narrate "<&4><&l>How dare you sacrifice the body of a worthless <[sacrificePlayer]>"
          - strike <player.location>
          - narrate "<&4><&l>You lose favor with the gods"
          - flag sacrificeCount:-:5

        - else if <[sacrificePlayer]> == "Demonyte":
          - run script:DemonSacrifice
        
        - else if <player.inventory.qty[bone]> > 4:
          - flag lastHead:<[sacrificePlayer]>
          - narrate "<&6><&l>You have sacrificed the body of <&a><&l><[sacrificePlayer]>"
          - take iteminhand
          - take bone qty:5
          - flag sacrificeCount:++
        
        - else:
          - narrate "You'll need at least 5 bones"

      - else:
        - narrate "You must be a priest to sacrifice!"

    - else:
      - narrate "<&b><&l>You pray to Bawb"

DemonSacrifice:
  Type: Task
  Script:
    - define sacrificeCows <player.location.find.entities[cow].within[5]>
    - if <<[sacrificeCows]>.size> > 2:
      - playsound <player.location> COW_HURT
      - playsound <player.location> GHAST_SCREAM
      - take iteminhand
      - strike <player.location> no_damage
      - remove <[sacrificeCows]>
      - execute as_op "i leatherhelmet 1 color:0,0,0 name:<player.name>'s lore:DemonHelmet unbreaking:10 protection:4"

    - else:
      - narrate "Not works"
