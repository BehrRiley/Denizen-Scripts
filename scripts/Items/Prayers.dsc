PrayerCheck:
  Type: World
  Events:
    On Player Right Clicks with book:
      - if <player.item_in_hand.lore> == lBlack:
        - narrate "<&2><&l>You Receive $5,000 in Black Welfare... Dayum Nigguh"
        - give money qty:5000
        - take iteminhand
        - midi candy <player.location>

      - if <player.item_in_hand.display> == "PrayerBook":
        - playeffect <player.location> ENCHANTMENT_TABLE qty:100

        - if <player.location.regions.contains[donorspawn]>:
        - else:
          - flag prayerCount:++

        - if <player.item_in_hand.lore> == lHeal:
          - narrate "You have used the Heal Prayer"
          - heal 5 <player.location.find.players.within[5]>

        - else if <player.item_in_hand.lore> == lDispel:
          - narrate "You have used the Dispel Prayer"

          - foreach <player.location.find.players.within[5]>:
            - adjust <[value]> remove_effects:1

        - else if <player.item_in_hand.lore> == lJump:
          - narrate "You have used the Jump Prayer"
          - cast Jump duration:15s <player.location.find.players.within[5]>

        - else if <player.item_in_hand.lore> == lSpeed:
          - narrate "You have used the Speed Prayer"
          - cast speed duration:15s <player.location.find.players.within[5]>

        - else if <player.item_in_hand.lore> == lFeed:
          - narrate "You have used the Feed Prayer"
          - cast saturation duration:15s <player.location.find.players.within[5]>

        - else if <player.item_in_hand.lore> == lWilderness:
          - if <player.world.name> == world:
            - narrate "You end up in a random location nearby."
            - execute as_op "wild <player.name>"
            - execute as_op "top"
            - cast water_breathing

        - else if <player.item_in_hand.lore> == lFireProtection:
          - narrate "You have used the Fire Protection Prayer"
          - cast fire_resistance duration:15s <player.location.find.players.within[5]>
        - take iteminhand
