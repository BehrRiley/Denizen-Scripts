Unkown:
  Type: Interact
  Requirements:
    Mode: None
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Hi Stranger... I don't believe I know you..."
Strike:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
  Steps:
    1:
      Damage Trigger:
        Script:
        - Execute as_server 'pex group agro user add <player.name>'
        - CHAT "<&a>I'll kill you!"
Agro:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup agro
  Steps:
    1:
      Proximity Trigger:
        Script:
        - CHAT "<&a>That's the one who attacked us!"
During:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>I'm worried with all these threats of attack!"
After:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup complete
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Thanks for everything!"
