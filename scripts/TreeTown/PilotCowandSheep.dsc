Sheep:
  Type: Assignment
  Interact Scripts:
  - 13 ^Pilot1
  - 12 ^Pilot3
Cow:
  Type: Assignment
  Interact Scripts:
  - 13 ^Pilot2
  - 12 ^Pilot3
Pilot1:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY qty:1500
    - PERMISSION essentials.help
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Are you ready to go yes or no?"
      Chat Trigger:
        1:
          Trigger: /Yes/ I'm ready to go.
          Script:
           - CHAT "<&a>Okay lets go!."
           - execute as_op 'warp ptown'
           - NARRATE "<&4>The Sheep takes 1500 foodstamps and you fly to a far off town... Sweet"
           - TAKE MONEY QTY:1500
        2:
          Trigger: /No/ I'm being a bitch today.
          Script:
           - CHAT "<&a>Alright cool.."
Pilot2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY qty:1500
    - PERMISSION essentials.help
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Are you ready to go back to spawn yes or no?"
      Chat Trigger:
        1:
          Trigger: /Yes/ I'm ready to go.
          Script:
           - CHAT "<&a>Okay lets go!."
           - execute as_op 'warp pspawn'
           - NARRATE "<&4>The Cow takes 1500 foodstamps and you fly to the spawn... Sweet"
           - TAKE MONEY QTY:1500
        2:
          Trigger: /No/ I'm being a bitch today.
          Script:
           - CHAT "<&a>Alright cool.."
Pilot3:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION essentials.help
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>You don't have enough money to ride... Broke ass mother fucker..."
