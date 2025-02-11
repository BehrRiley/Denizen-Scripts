ColinPirate:
  Type: Assignment
  Interact Scripts:
  - 1 ColinDuring
  - 2 ColinAfter

ColinDuring:
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

        - else if <npc.world.time.period> == day && <player.flag[Booted]>:
          - chat "Take the Leather to EnglishPirate He will know what to do with it."

        - else if <npc.world.time.period> == day && <player.flag[Sewing]> && <player.item_in_hand.lore> == lSewing && <player.inventory.qty[287]> > 9:
          - chat "Take Those items to EnglishPirate!"

        - else if <npc.world.time.period> == day && <player.flag[Sewing]>:
          - chat "English Needs His Needle and Thread"

        - else if <npc.world.time.period> == day && <player.flag[Sewed]>:
          - chat "Take those Boots to PiratePink"

        - else if <npc.world.time.period> == day && <player.flag[Booted]>:
          - chat "Take the leather over to EnglishPirate, he can so them up into boots for you"

        - else if <npc.world.time.period> == day && <player.flag[PirateLeather]>:
          - chat "You'll need to find some extremely high quality leather."

        - else if <npc.world.time.period> == day && <player.flag[NikePieces]>:
          - chat "I know where to get the stuff to make these boots, very specific leather"
          - flag PirateLeather

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
          - chat "Im Broke"
ColinAfter:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup Pirate
  Steps:
    1:
      Click Trigger:
        Script:
