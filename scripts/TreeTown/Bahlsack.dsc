Sack:
  Type: Assignment
  Interact Scripts:
  - 16 ^Comp
  - 13 ^Bahl2
  - 12 ^Bahl1
  - 11 ^Bahl
Bahl:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION essentials.help
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>I don't know you get out of my house cocksucker..."
Bahl1:
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
        - CHAT "<&a>I saw what you did for my dog. Maybe you're not such a cockscuker."
        - execute asserver 'pex user <player.name> add Gnome2'
Bahl2:
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
        - CHAT "<&a>We've been having a lot of trouble around the village... Something is very different. Ask around maybe someone will tell you."
        - ZAP 2
    2:
      Click Trigger:
        Script:
        - CHAT "<&a>Ask at the shops on second level.... I doubt they'll be very friendly."
        - ZAP 3
    3:
      Click Trigger:
        Script:
        - CHAT "<&a>Maybe you can try asking my neighbors FaJine or TykneeDihk"
        - ZAP 1
