buht:
  Type: Assignment
  Interact Scripts:
  - 15 ^Zomb4
  - 14 ^Zomb3
  - 13 ^Zomb2
  - 12 ^Zomb1
  - 11 ^Zomb
Zomb:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION essentials.help
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>I don't know you get out of my house BRAIINNSSS *Ahem* excuse me!"
Zomb1:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION essentials.help
    - PERMISSION Gnome6
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>BRAINSSS.. *Ahem* I mean hello there!"
        - execute asserver 'pex user <player.name> add Gnome8'
Zomb2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION Gnome8
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>What's that you say? You wanna be my friend? Okay but you gotta do something for me first."
        - ZAP 2
    2:
      Click Trigger:
        Script:
        - CHAT "<&a>I need BRRAAAAIIINNSSS... I mean I need.... heads yes... Three Humand heads... For.... a science project. Just get me some brains.. I mean heads."
        - execute asserver 'pex user <player.name> add Gnome4'
        - ZAP 3
    3:
      Click Trigger:
        Script:
        - CHAT "<&a>BBBBRAAAIIINNSSSS... I mean Hi have you got the heads yet?"
        - execute asserver 'pex user <player.name> add Gnome4'
Zomb3:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION essentials.help
    - PERMISSION Gnome4
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.inventory.qty[397:3]> > 2:
          - CHAT "<&a>Thank you! That's exactly what I needed"
          - TAKE 397:3 QTY:3
          - execute asserver 'pex user <player.name> add Gnome9'
        - else:
          - CHAT "<&a>BBBBRAAAIIINNSSSS... I mean Hi have you got the heads yet?"      
Zomb4:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION essentials.help
    - PERMISSION Gnome9
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Okay I trust you I'll show you... People were bound to find out eventually"
        - execute asserver 'pex user <player.name> add spidertalk'
        - ZAP
    2:
      Click Trigger:
        Script:
        - SWITCH location:5037,101,-9946,world
        - NARRATE "<&4>A piston opens revealing a secret room."
        - WAIT 10
        - SWITCH location:5037,101,-9946,world
        - NARRATE "<&4>And then closes..."
