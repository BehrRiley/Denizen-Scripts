PegBeard:
  Type: Assignment
  Script:
  - 1 PegDuring

PegDuring:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - if <npc.world.time.period> == day:
          - chat "I don't know you."

        - else if <npc.world.time.period> == day && <player.flag[RecipeFind]>:
          - chat "Arggh Matey ye should be findin the recipe for PiratePink!"

        - else if <npc.world.time.period> == day && <player.flag[RecipeHas]> && <player.item_in_hand.lore> == lRecipe:
          - chat "Give that to PiratePink"

        - else if } else if <npc.world.time.period> == day && <player.flag[RecipeHas]>:
          - chat "Give the recipe to Pirate Pink."

        - else if <npc.world.time.period> == day && <player.flag[NikePieces]> && <player.item_in_hand.lore> == lPirate:
          - chat "Give that to PiratePink"

        - else if <npc.world.time.period> == day && <player.flag[NikePieces]>:
          - chat "Laces fo some Nikes? Yeah I know where you get can dat shit... "
          - flag lacing

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
