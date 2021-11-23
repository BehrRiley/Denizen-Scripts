SandyBandit:
  Type: Assignment
  Interact Scripts:
  - 1 sandybandito
  Actions:
    On Assignment:
      - trigger name:proximity toggle:true radius:10
      - flag npc guardSpot:<npc.location>
      - health state:true
      - health 300 <npc>
      - heal <npc>
    On Enter Proximity:
      - run script:sandyCheck
    On Death by Player:
      - narrate "<&4><&l>You've killed a Sandy Bandit"
      - run script:SandyDropScript
      - determine no_drops
      - flag SandyKillCount:++

SandyBandito:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "<&e><&l>Hello!"
SandyCheck:
  Type: Task
  Script:
    - if <player.flag[isbandit]>:
      - chat "<&e><&l>Hello Fellow bandit!"

    - else:
      - run script:BanditAttack
      - vulnerable state:true


SandyBAttack:
  Type: task
  Script:
    - if <npc.item_in_hand> == bow:
      - push arrow destination:<player.location> speed:2
      - run script:sandystopAttack delay:5s

    - else:
      - attack
      - run script:sandystopAttack delay:15s

SandyStopAttack:
  Type: Task
  Script:
    - if <npc.location.find.players.within[20].size> < 1 && <player.location.distance[<npc.flag[guardSpot]>]> > 15:
      - chat "<&e><&l><&e><&l>He's not worth my time"
      - attack cancel
      - teleport npc location:<npc.flag[guardSpot]>
      - vulnerable state:true

    - else if <npc.location.find.npcs.within[20].size> > 0 && <npc.location.distance[<npc.flag[guardSpot]>]> < 15:
      - run script:SandyBAttack

    - else:
      - attack cancel
      - teleport npc location:<npc.flag[guardSpot]>
      - chat "<&e><&l><&e><&l>I have to stay close to the fort"
      - vulnerable state:true 
