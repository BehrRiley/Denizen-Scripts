jebb:
  Type: Assignment
  Interact Scripts:
  - 10 Jeb2
  - 9 Jeb1
  - 8 Jeb
Jeb1:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION Essentials.help
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Howdy <player.name>, Would you mind helping out a fellow sailor?"
        - ZAP step:2
    2:
      Click Trigger:
        Script:
        - CHAT "<&a>So can you help me out yes or no?"
      Chat Trigger:
        1:
          Trigger: /Yes/ I'll help you out.
          Script:
           - CHAT "<&a>Thanks! I need you to bring me a pumpkin. I need to do some underwater work on my boat, and I can't hold my breath forver!"
           - execute as_server 'pex user <player.name> add PumpkinJeb'
           - ZAP step:3
        2:
          Trigger: /No/ I'm busy.
          Script:
           - CHAT "<&a>That's fine, I'll get some help from my friend in town."
           - ZAP 1
           - COOLDOWN 200
    3:
      Click Trigger:
        Script:
        - CHAT "<&a>Thanks for helping me out!"
Jeb2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION PumpkinJeb
    - HOLDING PUMPKIN
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>I see you brought my pumpkin! Thank you... I'll be sure to tell the people in town about you <player.name>."
        - TAKE 86
        - execute as_server 'pex user <player.name> remove PumpkinJeb'
        - EXECUTE ASNPC 'region addmember town <player.name>'
        - execute as_server 'pex user <player.name> add TownEntry'
