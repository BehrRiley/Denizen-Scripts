PiratePink:
  Type: Assignment
  Interact Scripts:
  - 1 NikeDuring
  - 2 NikeAfter

NikeDuring:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - if <npc.world.time.period> == day && <player.flag[NikeQuest]> == null:
          - chat "So you tryin to get up in da club? Well you aint doin it with those whack ass shoes. I can make you some, but I need the recipe."
          - flag NikeQuest
          - flag RecipeFind

        - else if <npc.world.time.period> == day && <player.flag[RecipeFind]> && <player.flag[RecipeHas]> == null:
          - chat "Find the sneaker recipe at the bottom of the trench... It sank in a storm many years ago!"

        - else if <npc.world.time.period> == day && <player.flag[RecipeHas]>:
          - flag RecipeHas:!
          - chat "This truely is the recipe! Ask the other pirates around... They may be able to help you come up with the pieces"
          - flag NikePieces
          - flag RecipeFind:!

        - else if <npc.world.time.period> == day && <player.flag[Sewed]> && <player.item_in_hand.lore> == lPirate:
          - chat "Good, Now all I need is The Other items I require."
          - flag PirateBoots
          - take iteminhand
          - flag Sewed:!
          

        - else if <npc.world.time.period> == day && <player.flag[laced]> && <player.item_in_hand.lore> == lLaces:
          - chat "Those are dem laces! Good work"
          - flag laces
          - take iteminhand
          - flag laced:!

        - else if <npc.world.time.period> == day && <player.flag[GotGold]> && <player.item_in_hand.lore> == lPirateGold:
          - chat "Good the Pirate Gold! Now I just need the other items I require!"
          - flag PirateGold
          - flag GotGold:!
          - take iteminhand

        - else if <npc.world.time.period> == day && <player.flag[Laces]> && <player.flag[PirateGold]> && <player.flag[PirateBoots]>:
          - chat "Here are yo Nikes! Dayum dose be fresh"
          - execute as_server "give <player.name> 317 1 name:Shoes lore:Nikes"
          - execute as_server "pex group pirate user add <player.name>"
          - flag PirateGold:!
          - flag Laces:!
          - flag PirateBoots:!
          - flag NikePieces:!
          - flag NikeQuest:!

        - else if <player.flag[NikePieces]>:
          - chat "Ask the other pirates around... They may be able to help you come up with the pieces"

        - else if <npc.world.time.period> == Dusk:
          - chat "Im on my way to the club"

        - else if <npc.world.time.period> == Night && <player.equipment.boots.lore> lNikes:
          - chat "Dayum Dose Shooes be hella fresh"

        - else if <npc.world.time.period> == Night:
          - chat "Ewww how did you get in here with those shoes"
        - else:
          - chat "I broke"

NikeAfter:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup Pirate
  Steps:
    1:
      Click Trigger:
        Script:
