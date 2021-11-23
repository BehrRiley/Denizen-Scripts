ChairmanMao:
  Type: Assignment
  Interact Scripts:
  - 1 MaoQuest
  - 2 SecretPackage
  - 3 PiratePackage
MaoQuest:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[FortuneCookieStart]>:
          - chat "HOO AWE YOU AND HAO YOO FIND SUPA SECWET LOCATION!"
        - else if <player.flag[ChairmanMao]>:
          - chat "I am CHAIWMAAANNN MAAOOO. You seek Fowtune COOKEE? I NEED SPECIAL MILK FO' WECIPE!"
          - flag ChairmanCow
          - flag ChairmanMao:!
        - else if <player.flag[ChairmanCow]>:
          - chat "Seek out ChairmanCow! He is most honowable and will provide you with special milk."
        - else if <player.flag[RainBottle]>:
          - chat "IF CHAIWMAN CAO NEEDS WATAH GET HIM WATAH!"
        - else if <player.flag[Milked]> && <player.item_in_hand.lore> == lChairmanCow:
          - take 335
          - execute as_server "give <player.name> 357 1 name:Cookie lore:Fortune"
          - chat "That is the SPECIAL MILK FROM CHAIRMAN CAAAOOOOO! NAO I CAN MAKE SUPA SECWET WECIPE!"
          - flag Cookied
          - flag Milked:!
        - else if <player.flag[Milked]>:
          - chat "WHERE IS CHAIWMAN CAO'S MILK!"
        - else if <player.flag[Cookied]>:
          - chat "TAKE DAT TO MATTEWOM!"
        - else:
          - chat "I do it for Chairman Cow!!!"
SecretPackage:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged RifleGather
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[Package]>:
          - chat "Take dat to Jason... It is vewwy impowtant"
        - else:
          - chat "Ohhh yoo hea fo' supa secwet fowtune... I mean... package... Hewe yoo go!"
          - flag Package
          - flag RifleGather:!
          - execute as_server "give <player.name> 402 1 name:Package lore:Secret"
PiratePackage:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged lacing
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[Packaged]>:
          - chat "Take dat to da Piwate... It is vewwy impowtant"
        - else:
          - chat "Ohhh yoo hea fo' supa secwet fowtune... I mean... package... Hewe yoo go!"
          - flag Packaged
          - flag lacing:!
          - execute as_server "give <player.name> 402 1 name:Package lore:Secret"
