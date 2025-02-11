Matterom:
  Type: Assignment
  Interact Scripts:
  - 1 FortuneQuest
  - 2 WeaponDuring
  - 3 WeaponDone
FortuneQuest:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:

        - if <player.flag[FortuneCookieStart]>:
          - chat "I said go see HoChiMin at the windmill!"

        - else if <player.flag[ChairmanMao]>:
          - chat "Wow! Chairman Mao... What an honor.... What are you doing here! Go see him."

        - else if <player.flag[ChairmanCow]>:
          - chat "You mean you are going to meet The Great and Honorable Chairman Cow??? You are so lucky!"

        - else if <player.flag[RainBottle]>:
          - chat "Chairman cow seeks water to drink?! Make sure it's good!"

        - else if <player.flag[Milked]>:
          - chat "Get that Milk To Chairman Mao!!! I want my Cookie!"

        - else if <player.flag[Cookied]> && <player.item_in_hand.lore> == lFortune:
          - engage
          - chat "Finally My Fortune Cookie!!! Take this as a reward!"
          - narrate "You have Finished the Fortune Cookie Quest! You feel like a slightly better quester"
          - give money qty:5000
          - execute as_server "addcredits <player.name> 25"
          - execute as_server "pex user <player.name> add essentials.warps.KingShire"
          - flag CookieDone
          - flag CookieTemp
          - flag Cookied:!
          - disengage

        - else if <player.flag[Cookied]>:
          - chat ".....You lost the Cookie?"

        - else:
          - chat "You there! I am Hungry! Go Fetch me a Fortune Cookie from HoChiMin at the windmill."
          - flag FortuneCookieStart
WeaponDuring:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged CookieDone
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[CookieTemp]>:
          - chat "Now dat... Was a good Fortune Cookie! Since you're being so helpful... Go see CaptainCox.... He's on the roof."
          - flag WeaponDuring
          - flag CookieTemp
        - else if <player.flag[WeaponDuring]>:
          - chat "Go see CaptainCox I'm sure he still needs help! He's on the roof"
WeaponDone:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged WeaponComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - Chat "Wow you're done!"
