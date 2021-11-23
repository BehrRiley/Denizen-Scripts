Queenn:
  Type: Assignment
  Interact Scripts:
  - 14 ^Queen3
  - 13 ^Queen2
  - 12 ^Queen1
  - 11 ^Queen
Queen:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION essentials.help
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>I'm just your average spider.... "
Queen1:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION essentials.help
    - PERMISSION Gnome8
    - PERMISSION Gnome9
    - PERMISSION spidertalk
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>How did you get in here?! DoityJoo is worried about the seed? Oh well... That's okay I have a differentproblem"
        - PERMISS Gnome8
Queen2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION essentials.help
    - PERMISSION Gnome8
    - PERMISSION Gnome9
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Well I've turned into a spider... There's no cure for the disease so I've been hiding here!"
        - ZAP 2
    2:
      Click Trigger:
        Script:
        - CHAT "<&a>I guess you should tell DoityJoo I'm a spider... He will break the news To everyone..."
        - ZAP 3
    3:
      Click Trigger:
        Script:
        - CHAT "<&a>I'm going to stay here... I'm sure everyone around town will be thankful for your help"
        - execute as_server 'pex user <player.name> add Gnome10'
Queen3:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION essentials.help
    - PERMISSION Gnome10
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Thank you! Go tell DoityJoo what I've said!"
        - SWITCH location:5038,91,-9939,world
        - NARRATE "<&4>A door opens."
        - WAIT 10
        - SWITCH location:5038,91,-9939,world
        - NARRATE "<&4>And then closes..."
Comp:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION essentials.help
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Thanks for helping us all out... Check out our local shops."
        - ZAP
    2:
      Click Trigger:
        Script:
        - CHAT "<&a>Look around the area Maybe someone else might need some help."
        - ZAP
    3:
      Click Trigger:
        Script:
        - CHAT "<&a>I can't believe it.... A spider?! Why a spider?"
        - ZAP
    4:
      Click Trigger:
        Script:
        - CHAT "<&a>Word around town is you had sex with BalhSahk's dog... Is that true?"
        - ZAP
    5:
      Click Trigger:
        Script:
        - CHAT "<&a>I heard something was goint on between you and DoityJoo... I knew he was a faggot."
        - ZAP
    6:
      Click Trigger:
        Script:
        - CHAT "<&a>I never did find out what happened to BuhtFuhk."
        - ZAP
    7:
      Click Trigger:
        Script:
        - CHAT "<&a><PLAYER> You click me way too much."
        - ZAP
    8:
      Click Trigger:
        Script:
        - CHAT "<&a>Okay... <PLAYER> it's getting annoying."
        - ZAP
    9:
      Click Trigger:
        Script:
        - CHAT "<&a>I'm just going to start repeating myself..."
        - ZAP
    10:
      Click Trigger:
        Script:
        - CHAT "<&a>Fine..."
        - ZAP 1
