CaptainSkel:
  Type: Assignment
  Interact Scripts:
  - 7 ^Unkown
  - 8 ^Strike
  - 9 ^During
  - 10 ^Capt
  - 11 ^Capt1
  - 12 ^Is_player_zombie
  - 13 ^zomb_check_zoombhead
  - 14 ^Capt2
  - 15 ^Capt3
  - 16 ^Capt4
  - 24 ^Agro
  - 25 ^After
  - 26 ^PirateGold
Capt:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT '<&a>Get out of my boat!'
        - attack
Capt1:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged ocean1
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Ahoy there, I knew my crew didn't abandon me! Did ye bring the gold matey? I've been wait a hunderd years or more."
        - FLAG ocean2
Capt2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged ocean2
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Aye I tol' you to bring me the goldblocks! 16 of them"
Capt3:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged ocean2
    - item 41 qty:16
  Steps:
    1:
      Click Trigger:
        Script:
        - take 41 qty:16
        - CHAT '<&a>Aye thar they be! Booty ho!'
        - flag booty
Capt4:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged booty
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Thanks fer bringing me my booty!"

PirateGold:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged GetGold
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.equipment.helmet.material> == skull_item:
          - chat "Here's your share of the booty matey!"
          - execute as_server "give <player.name> 266 1 lore:PirateGold"
          - flag GetGold:!
          - flag GotGold

        - else:
          - chat  "Arrgghhh matey I only split me booty wif me own crew!"
