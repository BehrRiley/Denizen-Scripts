Peter:
  Type: Assignment
  Interact Scripts:
  - 7 ^Unkown
  - 8 ^Strike
  - 9 ^During
  - 10 ^air1
  - 11 ^airnogo
  - 12 ^airgo
  - 13 ^emergency
  - 14 ^airdone
  - 15 ^airafter
  - 24 ^Agro
  - 25 ^After
air1:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - flagged air
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>So it's finally happened... Bring me 64 TnT as fast as you can."
        - flag air1
airnogo:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - flagged air1
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Bring the 64 TnT Immediately!"
airgo:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - flagged air1
    - item 46 qty:64
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>That's it! We need to get going!"
        - teleport location:-12976,256,28417,world
        - flag emergency
emergency:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - flagged emergency
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT '<&a>Why are you down here?! We are under attack'
        - narrate "You are horribly stupid and a coward for leaving a battle like that."
        - teleport location:-12976,256,28417,world
airdone:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - flagged final1
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Sorry I couldn't stick around I would have been killed in an unarmed airship."
        - flag airgo
airafter:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - flagged airgo
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Thank you. Report back to Hans. He will want to hear about this."
Koo:
  Type: Assignment
  Interact Scripts:
  - 7 ^Koo1
Koo1:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>It works."
        - execute as_op 'vanish'
    2:
      Click Trigger:
        Script:
        - CHAT "<&a>It works."
        - execute as_op 'vanish'
        - zap 1
