fajine:
  Type: Assignment
  Interact Scripts:
  - 16 ^Comp
  - 13 ^Jine2
  - 12 ^Jine1
  - 11 ^Jine
Jine:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION essentials.help
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Hey fucker... Get outta my house!"
Jine1:
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
        - CHAT "<&a>Bahl was telling me about you... He said you fucked his dog or something."
        - execute asserver 'pex user <player.name> add Gnome3'
Jine2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION essentials.help
    - PERMISSION Gnome3
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>I've heard something has been going on with BuhtFuhk's house... He seems... different."
        - ZAP 2
    2:
      Click Trigger:
        Script:
        - CHAT "<&a>Try asking TinyDihk he might know something."
        - ZAP 3
    3:
      Click Trigger:
        Script:
        - CHAT "<&a>The shop owners know a lot of what goes on in town... Try there."
        - ZAP 1
