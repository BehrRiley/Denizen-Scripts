ShopCanceller:
  Type: World
  Events:
    On Player Clicks in Chest:
      - if <player.locations.regions.contains[newdom]> && <player.name> != NiggerBob:
        - determine cancelled

ShopClicker:
  Type: World
  Events:
    On Player Left Clicks in Chest:
      - if <player.flag[selling]> != null OR <player.flag[saleprice]> != null OR <player.flag[saleAmount]> != null OR <player.flag[saleTotal]> != null:
        - narrate "<&4><&l>Left click to Buy"
        - flag selling:!
        - flag saleprice:!
        - flag saleamount:!
        - flag saletotal:!
        - inventory close
        - determine cancelled
      - if <player.location.regions.contains[newdom]>:
        - if <context.item.display.strip_color> == Yes:
          - run script:BuyCheck instantly
          - inventory close

        - else if <context.item.display.strip_color> == No:
          - narrate "<&4><&l>Purchase Declined"
          - inventory close
          - flag buying:!
          - flag price:!
          - flag amount:!
          - flag total:!

        - else if <context.item.material> == paper:
          - run script:AmountSelection define:<context.item.lore.get[1].strip_color> instantly

        - else if <context.item.lore.as_list.size||0> > 0:
          - flag buying:!
          - flag price:!
          - flag amount:!
          - flag total:!
          - run script:ItemSelection define:<context.item.material.bukkit_enum>,<context.item.data>|<context.item.lore.get[1].strip_color.replace[Buy:].with[].trim>|<context.item.display> instantly determine cancelled
        }

ItemSelection:
  Type: Task
  Script:
    - if <[3]> == "null":
      - flag buying:<[1]>
      - flag price:<[2]>
      - inventory open d:<server.flag[amountShop].as_location.inventory>
      - narrate "<&5><&l>Item<&co> <&e><&l><player.flag[buying]>"
      - narrate "<&5><&l>Price<&co> <&e><&l><player.flag[price]>"

    - else:
      - flag price:<[2]>
      - run script:BuySpecialties define:<[3]> instantly


AmountSelection:
  Type: Task
  Script:
  - flag amount:<[1]>
  - flag 'total:<m:<player.flag[amount]> * <player.flag[price]>>'
  - narrate "<&5><&l>Item<&co> <&e><&l><player.flag[buying].as_item.material.bukkit_enum>"
  - narrate "<&5><&l>Amount<&co> <&e><&l><player.flag[amount]>"
  - narrate "<&5><&l>Total<&co> <&e><&l><player.flag[Total].as_int>"
  - inventory open d:<server.flag[confirmShop].as_location.inventory>

BuyCheck:
  Type: Task
  Script:
    - if <player.money> > <player.flag[total]||9999>:
      - narrate "<&a><&l>Purchase Confirmed"
      - take money qty:<player.flag[total].as_int>
      - give <player.flag[buying]> qty:<player.flag[amount].as_int>
      - flag buying:!
      - flag price:!
      - flag amount:!
      - flag total:!

    - else:
      - narrate "<&4><&l>You don't have the money"
      - flag buying:!
      - flag price:!
      - flag amount:!
      - flag total:!

BuySpecialties:
  Type: Task
  Script:
    - if <[1]> == "Fire Protect Prayer":
      - flag Buying:book[display_name=PrayerBook;lore=FireProtection]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "Jump Prayer":
      - flag Buying:book[display_name=PrayerBook;lore=Jump]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "Speed Prayer":
      - flag Buying:book[display_name=PrayerBook;lore=Speed]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "Dispel Prayer":

      - flag Buying:book[display_name=PrayerBook;lore=Dispel]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "Feed Prayer":
      - flag Buying:book[display_name=PrayerBook;lore=Feed]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "Heal Prayer":
      - flag Buying:book[display_name=PrayerBook;lore=Heal]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "MobKill":
      - flag Buying:bone[display_name=MagicSpell;lore=MobKill]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "EnderSeer":
      - flag Buying:eye_of_ender[display_name=MagicSpell;lore=EnderSeer]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "DayClock":
      - flag Buying:watch[display_name=MagicSpell;lore=DayClock]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "FireSpell":
      - flag Buying:fireball[display_name=MagicSpell;lore=Fire]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "CrystalBall":
      - flag Buying:glass[display_name=MagicSpell;lore=CrystalBall]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "<&b><&l>Diamond Set":
      - flag Buying:chest[display_name=Set;lore=DiamondArmor]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "<&7><&l>Iron Set":
      - flag Buying:chest[display_name=Set;lore=IronArmor]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else if <[1]> == "<&e><&l>Chain Set":
      - flag Buying:chest[display_name=Set;lore=ChainArmor]
      - inventory open d:<server.flag[AmountShop].as_location.inventory>

    - else:
      - narrate "<&5><&l>These items coming soon"
      - inventory close
