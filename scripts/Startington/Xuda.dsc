Xudaa:
  Type: Assignment
  Interact Scripts:
  - 12 Xuda4 
  - 11 Xuda3
  - 10 Xuda2
  - 9 Xuda1
  - 8 Xuda
Xuda:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION Essentials.help
  Steps:
    1:
      Proximity Trigger:
        Script:
        - CHAT "<&a>Caught you!"
        - execute asnpc 'kill <player.name>'
Xuda1:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION TownEntry
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Good to meet you. Jeb told me about what you did... We may be able to use your help."
        - ZAP
    2:
      Click Trigger:
        Script:
        - CHAT "<&a>Farmer Thomas has been working hard lately... He's been growing pumpkins for... Well for something important."
Xuda2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION XudaStart
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Farmer Thomas said that you may be of help to our cause. Is this true?"
        - ZAP
    2:
      Click Trigger:
        Script: 
        - CHAT "<&a>So can you help us? Yes or No?."
      Chat Trigger:
        1:
          Trigger: /Yes/ I am willing to help you.
          Script:
           - CHAT "<&a>Great here's what Im going to need.... For the past few days we have been receiving warnings that an attack is coming and we want to be ready."
           - WAIT 2
           - CHAT "<&a>So we want to be prepared. Bring me 10 iron swords so we can fight back! You can buy them in the city or make them yourself."
           - execute as_server 'pex user <player.name> add XudaSwords'
           - ZAP
        2:
          Trigger: /No/ I'm not ready to get into to something like that.
          Script:
           - CHAT "<&a>Shame... I really thought you could help us."
           - ZAP 1
           - COOLDOWN 200
    3:
      Click Trigger:
        Script:
        - CHAT "<&a>Thanks for all your help I don't think we could protect this place without you!"
Xuda3:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION XudaSwords
    - ITEM IRON_SWORD qty:10
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>I see you have the swords thank God!"
        - TAKE IRON_SWORD QTY:10
        - execute as_server 'pex user <player.name> add FortEntry'
        - execute as_server 'pex user <player.name> remove XudaSwords'
        - EXECUTE ASNPC 'region addmember fort <PLAYER>'
Xuda4:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION FortEntry
  Steps:
    1:
      Click Trigger:
        Script:
        - walk location:9,63,430,world
        - NARRATE "Xuda walks to the gate and shouts to someone behind to open it."
        - SWITCH location:6,64,436,world
        - CHAT "<&a>Go talk to Riger he's in command of the fort. He'll tell you what you need to do to help us prepare for the fight."
        - WAIT 5
        - SWITCH location:6,64,436,world
        - walk location:16,63,430,world
