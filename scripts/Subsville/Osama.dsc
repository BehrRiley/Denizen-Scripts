Osama:
  Type: Assignment
  Interact Scripts:
  - 7 ^Unkown
  - 8 ^Strike
  - 9 ^During
  - 10 ^arab
  - 11 ^arab2
  - 12 ^arab3
  - 13 ^arab4
  - 24 ^Agro
  - 25 ^After
arab:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged desert1
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT '<&a>Are you the envoy?! Do you have the water! The people are thirsty!'
        - flag desert2
arab2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged desert2
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT '<&a>Where are the water buckets? We need 30 water buckets! Or we will die of thirst...'
arab3:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged desert2
    - item 326 qty:30
  Steps:
    1:
      Click Trigger:
        Script:
        - take 326 qty:30
        - CHAT '<&a>Praise Alalalalalalala! He has broughten us water!'
        - flag water
arab4:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged water
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT '<&a>Thank water for the Allah!I mean....'
