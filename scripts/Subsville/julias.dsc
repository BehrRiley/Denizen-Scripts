Julius:
  Type: Assignment
  Interact Scripts:
  - 7 ^Unkown
  - 8 ^Strike
  - 9 ^During
  - 10 ^harvest
  - 11 ^harvest2
  - 12 ^harvest3
  - 24 ^Agro
  - 25 ^After
harvest:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged cliff3
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT '<&a>A map? Yes I have an old map... I never had any use for it. But I need you to do something for me.'
        - flag julmap
harvest2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged julmap
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT '<&a>I need you to harvest my sugarcane.'
        - execute as_op 'region addmember julfarm <player.name>'
        - listen block type:break block:SUGAR_CANE_BLOCK qty:10 region:julfarm script:flagger
        - wait 100
        - listen cancel id:break
flagger:
  Type: task
  script:
    - narrate "You have gotten 10 SugarCane. You should go see Julius"
    - flag mapped
    - execute as_op 'region removemember julfarm <player.name>'
    - listen finish id:break
harvest3:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged mapped
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a> Thank you! Here's that map you wanted... Enjoy."
        - give item:339
        - flag cliff4
