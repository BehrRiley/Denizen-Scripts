Rigerr:
  Type: Assignment
  Interact Scripts:
  - 14 Riger5
  - 13 Riger4
  - 12 Riger3
  - 11 Riger2
  - 10 Riger
Riger:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION Essentials.help
  Steps:
    1:
      Proximity Trigger:
        Script:
        - CHAT "<&a>You're not allowed in here!"
        - execute asnpc 'kill <player.name>'
Riger2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION FortEntry
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>I've heard a lot about you <PLAYER.name>. Are you ready for your orders?"
        - ZAP
    2:
      Click Trigger:
        Script: 
        - CHAT "<&a>So What will it be? Yes or No?"
      Chat Trigger:
        1:
          Trigger: /Yes/ ready sir!.
          Script:
           - CHAT "<&a>Well here's the deal. I heard that the attackers are on their way right now."
           - WAIT 2
           - CHAT "<&a>So we want to be prepared. Bring me 10 TNT so we can blow them right out of the water!"
           - execute as_server 'pex user <player.name> add RigerTNT'
           - ZAP
        2:
          Trigger: /No/ I'm being a bitch today.
          Script:
           - CHAT "<&a>Then we have no use for you here."
           - ZAP 1
           - COOLDOWN 200
    3:
      Click Trigger:
        Script:
        - CHAT "<&a>Thanks for all the help."
        - ZAP 1
Riger3:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION RigerTNT
    - ITEM TNT qty:10
  Steps:
    1:
      Click Trigger:
        Script:
        - ENGAGE
        - take TNT qty:10
        - CHAT "<&a>Finally! They're going to be here any minute... I can feel it."
        - WAIT 3
        - CHAT "<&a>Wait.... What was that!?"
        - walk location:-4,67,440,world
        - EXECUTE ASNPC '/schem load qb'
        - EXECUTE ASNPC '/paste'
        - CHAT "<&a>They're here! Get to the roof!"
        - WAIT 1
        - walk location:-1,67,434,world
        - WAIT 3
        - TELEPORT NPC location:-4,74,440,world
        - WAIT 3
        - CHAT "<&a>Loading the Cannon!"
        - WAIT 1
        - EXECUTE ASSERVER 'npc select 7'
        - EXECUTE ASNPC '/schem load cann'
        - EXECUTE ASNPC '/paste -o'
        - WAIT 2
        - CHAT "<&a>Fire!"
        - SWITCH location:-5,74,441,world
        - SWITCH location:-5,74,441,world
        - WAIT 1
        - SWITCH location:-5,74,439,world
        - SWITCH location:-5,74,439,world
        - WAIT 3
        - CHAT "<&a>Let's try and hit 'em one more time!"
        - TELEPORT NPC location:-4,74,440,world
        - EXECUTE ASSERVER 'npc select 7'
        - EXECUTE ASNPC '/schem load cann'
        - EXECUTE ASNPC '/paste -o'
        - WAIT 3
        - CHAT "<&a>Fire!"
        - SWITCH location:-5,74,441,world
        - SWITCH location:-5,74,441,world
        - WAIT 1
        - SWITCH location:-5,74,439,world
        - SWITCH location:-5,74,439,world
        - CHAT "<&a>Hah, We got 'em! Good job!"
        - WAIT 3
        - EXECUTE ASNPC '/undo 3'
        - walk location:-1,67,434,world
        - TELEPORT NPC location:0,67,440,world
        - execute as_server 'pex user <player.name> remove RigerTNT'
        - execute as_server 'pex user <player.name> add TownComplete'
        - DISENGAGE
Riger4:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION TownComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Thanks <PLAYER.name> I don't think we could have done it without you."
        - CHAT "<&a>Please take these items as a reward and this money as payment for your help."
        - GIVE MONEY QTY:10000
        - GIVE 264 QTY:10
        - GIVE 276
        - GIVE 310
        - GIVE 311
        - GIVE 312
        - GIVE 313
        - EXECUTE ASNPC 'region addmember sub <PLAYER.name>'
        - NARRATE "Awesome! You just got 10,000 Nigger Food Stamps and some diamond armor!"
        - CHAT "<&a>Now let me show you why we're here guarding this area."
        - WAIT 1
        - "NARRATE Riger takes you into the water underneath the fort. After descending a few feet you see what they've been guarding... A giant submarine."
        - TELEPORT location:-3,41,426,world
        - TELEPORT NPC location:-3,41,426,world
        - CHAT "<&a>Welcome to NiggerBob's submarine. Feel free to ask me any time to take you down here... Or just come down yourself! You know where to find me"
        - WAIT 3
        - walk location:-1,41,421,world
        - WAIT 3
        - NARRATE "Riger jumps in the water and disappears"
        - TELEPORT NPC location:0,67,440,world
        - execute as_server 'pex user <player.name> add TownComplete1'
Riger5:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION TownComplete1
  Steps:
    1:
      Click Trigger:
        Script: 
        - CHAT "<&a>You want to go down into the submarine?"
        - ZAP
    2:
      Click Trigger:
        Script:
        - CHAT "<&a>So what will it be? Yes or No?"
      Chat Trigger:
        1:
          Trigger: /Yes/ I'm ready to go.
          Script:
           - CHAT "<&a>Great, let's go."
           - WAIT 2
           - NARRATE "Riger leads you into the water."
           - TELEPORT location:-3,41,426,world
           - NARRATE "And you end up inside the submarine.... That was fast!"
           - ZAP 2
        2:
          Trigger: /No/ I'm not ready.
          Script:
           - CHAT "<&a>Okay, just come see me when you are."
           - ZAP 2
           - COOLDOWN 200
