PegBeard:
  Type: Assignment
  Interact Scripts:
  - 1 PegDuring
  - 2 PegAfter

PegDuring:
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

        - else if <npc.world.time.period> == day && <player.flag[laced]>:
          - chat "Take those laces to PiratePink"

        - else if <npc.world.time.period> == day && <player.flag[Packaged]>:
          - take iteminhand
          - chat "That's definitely what I needed.. Now to uh..."
          - playsound sound:Drink location:<npc.location> volume:2
          - playsound sound:Drink location:<npc.location> volume:2
          - wait 1
          - playsound sound:Drink location:<npc.location> volume:2
          - chat "Make Some Laces"
          - playsound sound:Burp location:<npc.location> volume:2
          - execute as_server "give <player.name> string 1 lore:Laces"
          - flag packaged:!
          - flag laced
          - narrate "<&4<&l>PegBeard simply eats the package and tries to sneakily pull some old shoe laces out of his pocket"
          - chat "Here you go"

        - else if <npc.world.time.period> == day && <player.flag[lacing]>:
          - chat "You need to go find Chairman Mao.... He lives in the town of KingShire... He has what I need to make the laces."

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
          - chat "Im Broke"
PegAfter:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup Pirate
  Steps:
    1:
      Click Trigger:
        Script:
