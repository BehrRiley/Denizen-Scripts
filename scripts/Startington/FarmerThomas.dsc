Farmm:
  Type: Assignment
  Interact Scripts:
  - 10 ^Farm2
  - 9 Farm1
  - 8 Farm
Farm:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION Essentials.help
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>You're not supposed to be in here!"
Farm1:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION TownEntry
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Hi, Jeb told me how you helped him. It's good to meet you."
        - ZAP
    2:
      Click Trigger:
        Script: 
        - CHAT "<&a>You can take a look around, if you need anything just say something."
      Chat Trigger: #There can be multiple entries under a Chat Trigger or Location Trigger node. Hence the '1' on the next line.
        1:
          Trigger: What's with all these /pumpkin/s.
          Script:
           - CHAT "<&a>Hmm... Well since Jeb says we can trust you I'll tell you... But you have to do something for me first okay?"
           - ZAP
    3:
      Click Trigger:
        Script: 
        - CHAT "<&a>So can you help out? Yes or No?"
      Chat Trigger: #There can be multiple entries under a Chat Trigger or Location Trigger node. Hence the '1' on the next line.
        1:
          Trigger: /Yes/ I want to know more.
          Script:
           - CHAT "<&a>I need you to bring me a diamond hoe.... You can buy one in the city I've just been too busy around here to go."
           - execute as_server 'pex user <player.name> add FarmerHoe'
           - ZAP
        2:
          Trigger: /No/ I'm not ready for this.
          Script:
           - CHAT "<&a>That's fine, Come back if you're interested."
           - ZAP 1
           - COOLDOWN 200
    4:
      Click Trigger:
        Script:
        - CHAT "<&a>I really appreciate you doing me that favor."
Farm2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION FarmerHoe
    - HOLDING DIAMOND_HOE
  Steps:
    1:
      Click Trigger:
        Script:
        - TAKE 293
        - CHAT "<&a>Thank you! Now I can get on with my harvest."
        - WAIT 1
        - CHAT "<&a>Well as promised let me tell you why we need all these pumpkins... We have quite a large under water project going."
        - WAIT 1
        - CHAT "<&a>Xuda can fill you in on the details."
        - execute as_server 'pex user <player.name> remove FarmerHoe'
        - execute as_server 'pex user <player.name> add XudaStart'
        - WAIT 1
        - EXECUTE ASNPC '/replacenear 15 pumpkin air'
