Tony:
  Type: Assignment
  Interact Scripts:
  - 8 ^Strike
  - 9 ^During
  - 10 ^boat
  - 11 ^boat2
  - 12 ^boat3
  - 15 ^boat4
  - 14 ^boat5
  - 16 ^boat6
  - 24 ^Agro
  - 25 ^After
  - 26 ^TonyThere
boat:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged gay1
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT '<&a>Ahoy matey, if ye be seekin enterance to my lair ye best help me out'
        - flag cliff2
boat2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged cliff2
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Thar be a map in town I be lookin fer, a guy by the name o' Julias be keepin it. <&4>Get me that map!"
        - flag cliff3
boat3:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged cliff3
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Where be Julias map! I be havin' yer booty if ye don't bring me my booty"
boat4:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged cliff4
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.inventory.qty[339]> > 0:
          - take 339
          - CHAT '<&a>Aye thar it be! Booty ho!'
          - execute as_server 'pex group smuggler user add <player.name>'
          - CHAT '<&a>Have ye lost the map matey?!'
        - else:
          - chat "<&a><&l>Have ye lost the map matey?"
boat6:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup smuggler
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT '<&a>Thanks fer the map matey!'

TonyThere:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup complete
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "Okay matey we be ready to set sail!"
        - take money qty:100
        - narrate "Tony takes 100 FoodStamps and you sail to Pirate Trench!"
        - teleport location:<Server.Flag[TonyThere]>

TonyBack:
  Type: Assignment
  Interact Scripts:
  - 1 TonyBackScript

TonyBackScript:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup complete
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "Okay matey we be headin back to port!"
        - take money qty:100
        - narrate "Tony takes 100 FoodStamps and you sail back to Subsville!"
        - teleport location:<Server.Flag[TonyBack]>
