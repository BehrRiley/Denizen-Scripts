Tie:
  Type: Assignment
  Interact Scripts:
  - 16 ^Comp
  - 13 ^Dihk2
  - 12 ^Dihk1
  - 11 ^Dihk
Dihk:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION essentials.help
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Wanna get killed? Then Get the Fuck Out!"
Dihk1:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION essentials.help
    - PERMISSION Gnome2
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Bahl was telling me you had sex with him or something, I didn't listen.... Don't touch me."
        - execute asserver 'pex user <player.name> add Gnome5'
Dihk2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION essentials.help
    - PERMISSION Gnome5
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>I've heard CohkPhace at the potions shop has been getting a lot of business lately."
        - ZAP 2
    2:
      Click Trigger:
        Script:
        - CHAT "<&a>Have you talked to FaJine"
        - ZAP 3
    3:
      Click Trigger:
        Script:
        - CHAT "<&a>I've heard that DoityJoo has been very busy... I wonder where he's been "
        - ZAP 1
