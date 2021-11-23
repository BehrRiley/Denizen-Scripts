Swampy_BogBeard:
  Type: Assignment
  Interact Scripts:
  - 1 SwampyDuring
  - 2 SwampyAfter

SwampyDuring:
  Type: Interact
  Requirement:
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

        - else if <npc.world.time.period> == day && <player.flag[PirateGold]>:
          - chat "Keep on working to get dose nikes!"

        - else if <npc.world.time.period> == day && <player.flag[GotGold]>:
          - chat "Take the PirateGold to PiratePink! He can make dose ugly boots gold"

        - else if <npc.world.time.period> == day && <player.flag[GetGold]>:
          - chat "We need a particular type of Gold... Pirate Gold! Now if we only knew a Pirate... With Some Gold."

        - else if <npc.world.time.period> == day && <player.flag[NikePieces]>:
          - chat "So you tryin to get some nikes, and PiratePink Sent you here for some color? Well every Pirate Knows gold is in!"
          - flag GetGold

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
SwampyAfter:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup Pirate
  Steps:
    1:
      Click Trigger:
        Script:
