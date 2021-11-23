ShopSellClicker:
  Type: World
  Events:
    On Player Right Clicks in Chest:
      - if <player.flag[buying]> != null OR <player.flag[total]> != null OR <player.flag[amount]> != null OR <player.flag[total]> != null:
        - narrate "<&4><&l>Right click to sell"
        - flag buying:!
        - flag price:!
        - flag amount:!
        - flag total:!
        - inventory close
        - determine cancelled

      - if <player.location.regions.contains[newdom]>:

        - if <context.item.display.strip_color> == Yes:
          - run script:SellCheck instantly
          - inventory close

        - else if <context.item.display.strip_color> == No:
          - narrate "<&4><&l>Sale Declined"
          - inventory close
          - flag selling:!
          - flag salePrice:!
          - flag saleAmount:!
          - flag saleTotal:!

        - else if <context.item.material> == paper:
          - run script:AmountSaleSelection define:<context.item.lore.get[1].strip_color> instantly

        - else if <context.item.lore.as_list.size||0> > 0:
          - flag selling:!
          - flag salePrice:!
          - flag saleAmount:!
          - flag saleTotal:!
          - run script:ItemSaleSelection define:<context.item.material.bukkit_enum>,<context.item.data>|<context.item.lore.get[2].strip_color.replace[Sell:].with[].trim>|<context.item.display> instantly determine cancelled
        }

ItemSaleSelection:
  Type: Task
  Script:
    - if <[3]> == "null":
      - flag selling:<<[1]>>
      - flag salePrice:<[2]>
      - inventory open d:<server.flag[AmountShop].as_location.inventory>
      - narrate "<&5><&l>Item<&co> <&e><&l><player.flag[selling]>"
      - narrate "<&5><&l>salePrice<&co> <&e><&l><player.flag[salePrice]>"

    - else:
      - flag salePrice:<[2]>
      - run script:SellSpecialties define:<[3]>  instantly


AmountSaleSelection:
  Type: Task
  Script:
  - flag saleAmount:<[1]>
  - flag 'saleTotal:<m:<player.flag[saleAmount]> * <player.flag[salePrice]>>'
  - narrate "<&5><&l>Item<&co> <&e><&l><player.flag[selling].as_item.material.bukkit_enum>"
  - narrate "<&5><&l>Sale Amount<&co> <&e><&l><player.flag[saleAmount]>"
  - narrate "<&5><&l>Total Offer<&co> <&e><&l><player.flag[saleTotal].as_int>"
  - inventory open d:<server.flag[confirmShop].as_location.inventory>

SellCheck:
  Type: Task
  Script:
    - if <player.inventory.qty[<player.flag[selling]>]||0> >= <player.flag[saleAmount]||999>:
      - narrate "<&a><&l>Sale Confirmed"
      - give money qty:<player.flag[saleTotal].as_int||0>
      - take <player.flag[selling]> qty:<player.flag[saleAmount].as_int||0>
      - flag selling:!
      - flag salePrice:!
      - flag saleAmount:!
      - flag saleTotal:!

    - else:
      - narrate "<&4><&l>You don't have enough items"
      - flag selling:!
      - flag salePrice:!
      - flag saleAmount:!
      - flag saleTotal:!

SellSpecialties:
  Type: Task
  Script:
    - if <[1]> == "Fire Protect Prayer":
      - flag Selling:book[display_name=PrayerBook;lore=FireProtection]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "Jump Prayer":
      - flag selling:book[display_name=PrayerBook;lore=Jump]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "Speed Prayer":
      - flag selling:book[display_name=PrayerBook;lore=Speed]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "Dispel Prayer":
      - flag selling:book[display_name=PrayerBook;lore=Dispel]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "Feed Prayer":
      - flag selling:book[display_name=PrayerBook;lore=Feed]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "Heal Prayer":
      - flag selling:book[display_name=PrayerBook;lore=Heal]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "MobKill":
      - flag selling:bone[display_name=MagicSpell;lore=MobKill]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "EnderSeer":
      - flag selling:eye_of_ender[display_name=MagicSpell;lore=EnderSeer]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "DayClock":
      - flag selling:watch[display_name=MagicSpell;lore=DayClock]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "FireSpell":
      - flag selling:fireball[display_name=MagicSpell;lore=Fire]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "CrystalBall":
      - flag selling:glass[display_name=MagicSpell;lore=CrystalBall]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "<&b><&l>Diamond Set":
      - flag Selling:chest[display_name=Set;lore=DiamondArmor]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "<&7><&l>Iron Set":
      - flag Selling:chest[display_name=Set;lore=IronArmor]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "<&e><&l>Chain Set":
      - flag Selling:chest[display_name=Set;lore=ChainArmor]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else:
      - narrate "<&5><&l>These items coming soon"
      - inventory close
