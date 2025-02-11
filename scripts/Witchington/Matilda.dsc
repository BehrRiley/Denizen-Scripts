Matilda:
  Type: Assignment
  Interact Scripts:
  - 0 Unknown
  - 1 ZombieStart
  - 2 Grunty
  - 3 MatildaWarned
  - 4 FinishingUp
  Actions:
    On Assignment:
      - trigger name:proximity toggle:true radius:15
    On Exit Proximity:
      - if <player.flag[InBattle]>:
        - run battlequit
      - else:
ZombieStart:
  Type: Interact
  Requirements:
    Mode: All
    Requirements:
    - permission craft.horsearmor
  Steps:
    1:
      Click Trigger:
        Script:
        - if <flag.p:zombietown>:
          - chat "<&e><&l>Look around town, Others still need help!"
        - else if <flag.p:zombiekilled1>:
          - chat "<&e><&l>Good thing you got rid of those zahmbies."
          - flag zombietown
        - else if <flag.p:zombieclear1>:
          - chat "<&e><&l>Go upstairs and check out that noise... It's prahbahbly zahmbies."
        - else:
          - engage duration:60s
          - chat "<&e><&l>I've been having trouble with Zahmbies lately.... They've been tearin' up my windahs."
          - wait 3
          - playsound <player.location> sound:GLASS volume:1
          - wait 2
          - playsound <player.location> sound:ZOMBIE_WOODBREAK volume:1
          - playsound <player.location> sound:GLASS volume:1
          - wait 2
          - playsound <player.location> sound:ZOMBIE_WOODBREAK volume:1
          - wait 2
          - playsound <player.location> sound:GLASS volume:1
          - wait 2
          - playsound <player.location> sound:ZOMBIE_WOODBREAK volume:1
          - chat "<&e><&l>Damn Zahmbies! Can you go up there and see what the problem is"
          - flag zombieclear1
          - drop entity:zombie location:<server.flag[Zombie_Start1]> qty:4
          - drop entity:zombie location:<server.flag[Zombie_Start2]> qty:4
          - drop entity:zombie location:<server.flag[Zombie_Start3]> qty:4
          - drop entity:zombie location:<server.flag[Zombie_Start4]> qty:4
          - drop entity:zombie location:<server.flag[Zombie_Start5]> qty:4
          - drop entity:zombie location:<server.flag[Zombie_Start6]> qty:4
          - run zombiefailed delay:60s id:zombiefail
          - listen kill type:entity target:zombie qty:15 script:killed1
zombiefailed:
  Type: Task
  Script:
    - flag zombieclear1:!
    - narrate "<4e><&l>You've failed to kill the zahmbies in time... You gay or something?"
    - execute as_op "killall zombie 50"
    - narrate "<4e><&l>The zahmbies gaht away."
    - listen cancel id:killed1
    - listen cancel id:killed2
    - listen cancel id:killed3
    - listen cancel id:killed4
    - listen cancel id:killed5
    - listen cancel id:BattleScript1
    - listen cancel id:Battlescript2
    - listen cancel id:Battlescriptfinish
    - listen cancel id:zombie
killed1:
  Type: Task
  Script:
    - flag zombieclear1:!
    - queue queue:zombiefail clear
    - flag zombiekilled1
    - execute as_op "killall zombie 50"
    - narrate "<4e><&l>The rest of the zombies flee in fear"
Grunty:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged zombietown
    - flagged Minerva
    - flagged Mildred
    - flagged Hazel
    - flagged Luna
    - flagged Glinda
    - flagged Wanda
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "<&e><&l>I haven't seen Gruntilda for awhile.... She's been messing around in the old house just outside town."
        - flag gruntilda
MatildaWarned:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged spawnered
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "<&e><&l>Gruntilda is going to invade with zombies!!! Get ready for Combat and report back to me!"
        - zap step:2
    2:
      Click Trigger:
        Script:
        - engage duration:60s
        - chat "<&e><&l>Good your just in time we're being invaded!!!"
        - walk location:<server.flag[Matilda_Point4]>
        - wait 10
        - run script:MatildaFight1
        - flag InFight duration:240s
        - zap step:3 duration:240s
    3:
      Click Trigger:
        Script:
        - chat "<&e><&l>Just stay Close to me!"
FinishingUp:
  Type: InterAct
  Requirements:
    Mode: All
    List:
    - ingroup witch
  Steps:
    1:
      Click Trigger:
        Script:
        - chat  "Wow you're done"
