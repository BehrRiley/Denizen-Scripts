Doity:
  Type: Assignment
  Interact Scripts:
  - 16 ^Comp
  - 14 ^Joo3
  - 13 ^Joo2
  - 12 ^Joo1
  - 11 ^Joo
Joo:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION essentials.help
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>You shouldn't be in here!"
Joo1:
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
        - CHAT "<&a>How did you find me? Did the potion shop owner told? Okay... I can trust you"
        - execute asserver 'pex user <player.name> add Gnome7'
Joo2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION essentials.help
    - PERMISSION Gnome7
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a><&a>I've been guarding this seed... With all this strange stuff going on I can't be too careful."
        - ZAP 2
    2:
      Click Trigger:
        Script:
        - CHAT "<&a><&a>I need you to investigate ButFuhk's house... Try and get them to trust you. I think he might be gay or something.... You'll notice something strange."
        - ZAP 3
    3:
      Click Trigger:
        Script:
        - CHAT "<&a>Thanks for helping us out!"
        - ZAP 1
Joo3:
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
        - CHAT "<&a>What's that you say? QueenSpider has become a spider?! WHAT! Holy Shit that is fuckin' crazy..."
        - ZAP 2
    2:
      Click Trigger:
        Script:
        - CHAT "<&a>Well that would explain a lot... I guess I've been down here for no reason... I'll tell everyone in town..."
        - ZAP 3
    3:
      Click Trigger:
        Script:
        - CHAT "<&a>Thanks for helping us out!"
        - execute asserver 'pex user <player.name> add GnomeComplete'
        - execute asserver 'pex user <player.name> add essentials.warps.treetown"
        - REFUSE Gnome1
        - REFUSE Gnome2
        - REFUSE Gnome3
        - REFUSE Gnome4
        - REFUSE Gnome5
        - REFUSE Gnome6
        - REFUSE Gnome7
        - REFUSE Gnome8
        - REFUSE Gnome9
        - REFUSE Gnome10
