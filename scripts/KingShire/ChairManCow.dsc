ChairmanCow:
  Type: Assignment
  Interact Scripts:
  - 1 CowQuest
CowQuest:
  Type: Interact
  Requirements:
    Mode: None
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[FortuneCookieStart]>:
          - chat "Moo? I r regular Cow O:"
        - else if <player.flag[ChairmanMao]>:
          - chat "Moo? I r regular Cow O:"
        - else if <player.flag[ChairmanCow]>:
          - chat "Chairman Mao r n33d Milk? I r thurstee 4 rain."
          - flag RainBottle
          - flag ChairmanCow:!
        - else if <player.flag[RainBottle]> && <player.item_in_hand.lore> == lIngredient:
          - take 373
          - chat "THIS R GOOD RAIN! HERE R MILK!"
          - execute as_server "give <player.name> 335 1 name:Milk lore:ChairmanCow"
          - flag Milked
          - flag RainBottle:!
        - else if <player.flag[RainBottle]>:
          - chat "I R THURSTEE 4 RAIN D:<"
        - else if <player.flag[Milked]>:
          - chat "I R HAVE BEEN MILKED :)!"
        - else if <player.flag[Cookied]>:
          - chat "I R HAVE BEEN MILKED? O:"
