Bark:
  Type: Assignment
  Interact Scripts:
  - 13 ^Barky2
  - 12 ^Barky1
  - 11 ^Barky
Barky:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION essentials.help
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Bark."
Barky1:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION essentials.help
    - ITEM 352
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Thanks for the bone bro..."
        - TAKE 352
        - execute asserver 'pex user <player.name> add Gnome1'
Barky2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION essentials.help
    - PERMISSION Gnome1
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Bark."
