HoChiMin:
  Type: Assignment
  Interact Scripts:
  - 1 HoQuest
HoQuest:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[FortuneCookieStart]>:
          - chat "Hewwo I am HoChiMin!!!! I unfowtunately am out of Fowtoon Cooky. Pwease Go Find Chairman Mao in Supa Secwet Cooky Location."
          - flag ChairmanMao
          - flag FortuneCookieStart:!
        - else if <player.flag[ChairmanMao]>:
          - chat "Go see Chairman Mao! He in Supa Secwet Fowtoon Cooky Location."
        - else if <player.flag[ChairmanCow]>:
          - chat "ChairmanCow is most Honowable! He will give you good milk!"
        - else if <player.flag[RainBottle]>:
          - chat "Chairman cow seeks watah to drink?! You must bottle the wain!"
        - else if <player.flag[Milked]>:
          - chat "Get Milk to Chaiwman Mao!"
        - else if <player.flag[Cookied]>:
          - chat "That is a most Honowable Cookie.. Bring it to Mattewom at Castle!!"
        - else:
          - chat "We do it for Chairman Mao!!!"
