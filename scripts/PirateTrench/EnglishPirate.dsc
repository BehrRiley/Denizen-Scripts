EnglishPirate:
  Type: Assignment
  Interact Scripts:
  - 1 EnglishDuring
  - 2 EnglishAfter

EnglishDuring:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - if <npc.world.time.period> == day && <player.flag[NikeQuest]> == null:
          - chat "I don't know you."

        - else if <npc.world.time.period> == day && <player.flag[RecipeFind]>:
          - chat "Arggh Matey ye should be findin the recipe for PiratePink!"

        - else if <npc.world.time.period> == day && <player.flag[RecipeHas]> && <player.item_in_hand.lore> == lRecipe:
          - chat "Give that to PiratePink"

        - else if <npc.world.time.period> == day && <player.flag[RecipeHas]>:
          - chat "Give the recipe to Pirate Pink."

        - else if <npc.world.time.period> == day && <player.flag[NikePieces]> && <player.item_in_hand.lore> == lPirate:
          - chat "Give that to PiratePink"

        - else if <npc.world.time.period> == day && <player.flag[Booted]> && <player.item_in_hand.lore> == lQuality:
          - chat "So you got the Leather for the Pirate boots, well I still need something from you... I need 10 String and an arrow"
          - flag Booted:!
          - flag Sewing
          - take iteminhand

        - else if <npc.world.time.period> == day && <player.flag[Sewing]> && <player.inventory.qty[262]> > 0 && <player.inventory.qty[287]> > 9:
          - chat "That's exactly what I needed"
          - take item:287 qty:10
          - take item:262
          - execute as_server "give <player.name> leatherboots 1 lore:Pirate"
          - flag sewing:!
          - flag Sewed

        - else if <npc.world.time.period> == day && <player.flag[Sewing]>:
          - chat "Where is my 10 string and One Arrow?"

        - else if <npc.world.time.period> == day && <player.flag[Sewed]>:
          - chat "Take those Boots to PiratePink"

        - else if <npc.world.time.period> == day && <player.flag[NikePieces]>:
          - chat "You'll wanna see Colin about the boots"

        - else if <npc.world.time.period> == day && <player.flag[NikePieces]> && <player.item_in_hand.lore> == lLaces:
          - chat "Give those to PiratePink."

        - else if <npc.world.time.period> == day && <player.flag[NikePieces]> && <player.item_in_hand.lore> == lPirateGold:
          - chat "Give that to PiratePink."

        - else if <npc.world.time.period> == day && <player.flag[Laces]> && <player.flag[PirateGold]> && <player.fag[PirateBoots]>:
          - chat "Go See PiratePink!"

        - else if <npc.world.time.period> == Dusk:
          - chat "I'm on my way to da club."

        - else if <npc.world.time.period> == Night && <player.equipment.boots.lore> lNikes:
          - chat "Good to See you here"

        - else if <npc.world.time.period> == Night:
          - chat "Ewww how did you get in here with those nasty shoes."
        - else :
EnglishAfter:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup Pirate
  Steps:
    1:
      Click Trigger:
        Script:
