Kirk1:
  Type: Assignment
  Interact Scripts:
  - 7 ^kirkgo
kirkgo:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - permission towncomplete
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT '<&a>Close the Hatches we be ready to travel!'
        - execute as_server 'pex group friendly user add <player.name>'
        - execute as_server 'pex group default user add <player.name>'
        - narrate "<&4>You are terrified as the submarine begins to move, after many long hours you surface."
        - teleport location:-12942,69,28452,world
Kirk2:
  Type: Assignment
  Interact Scripts:
  - 6 ^Unkown
  - 7 ^kirkleave
kirkleave:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT '<&a>Ahoy we be headin back to port!'
        - narrate "<&4>The journey back is twice as terrifying as the way there. You thank god your still alive."
        - teleport location:0,41,433,world
