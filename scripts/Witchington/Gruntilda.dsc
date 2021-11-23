Gruntilda:
  Type: Assignment
  Interact Scripts:
  - 1 Unknown
  - 2 GruntildaStart
  - 3 GruntildaDuring
  - 4 GruntildaReady
  - 5 GruntildaFight
  - 6 GruntyAfter
  - 7 QuestDone
GruntildaStart:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged Gruntilda
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.equipment.helmet> == 397:2:
          - chat "<&e><&l>Ah... The new Zahmbie recruit. I have a special mission for you..."
          - zap 2
        - else:
          - chat "<&e><&l>You're not supposed to be in here!!! Guards!!!!"
          - run script:GruntGo
    2:
      Click Trigger:
        Script:
        - if <player.equipment.helmet> == 397:2:
          - chat "<&e><&l>I need you to bring me two Monster Spawners.... We attack soon."
          - flag spawnergather
        - else:
          - chat "<&e><&l>You're not supposed to be in here!!! Guards!!!!"
          - run script:GruntGo
GruntildaDuring:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged SpawnerGather
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.equipment.helmet> == 397:2 && <player.inventory.qty[52]> > 1:
          - chat "<&e><&l>Fantastic! You brought the spawners.... We attack soon!"
          - take item:52
          - narrate "<4><&l>You should probably warn the witches in town about this!"
          - flag spawnered
          - flag Matilda:!
          - flag Minerva:!
          - flag Mildred:!
          - flag Hazel:!
          - flag Gruntilda:!
          - flag Luna:!
          - flag Glinda:!
          - flag Wanda:!
        - else if <player.equipment.helmet> == 397:2:
          - chat "<&e><&l>Were are my Two Mob Spawners?"
        - else:
          - chat "<&e><&l>You're not supposed to be in here!!! Guards!!!!"
          - run script:GruntGo
GruntildaReady:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged Spawnered
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.equipment.helmet> == 397:2:
          - chat "<&e><&l>We attack soon!"
          - narrate "<4><&l>You should probably warn the witches in town about this!"
        - else:
          - chat "<&e><&l>You're not supposed to be in here!!! Guards!!!!"
          - run script:GruntGo
GruntildaFight:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged finally
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "<&e><&l>It's the final battle! Get read and Fight!"
        - listen kill type:Npc Target:Gruntilda qty:1 Script:DeathGrunt id:Grunty
        - vulnerable state:true
        - health true set_max:10
        - attack
        - run script:fightfail delay:60s
DeathGrunt:
  Type: Task
  Script:
    - if <player.flag[finally]>:
      - chat "<&e><&l>I have died! Ouch this shit hurts! Wait and Ill come back to life.... I give up... Dayum!"
      - narrate "<4><&l>You have defeated Grunty!"
      - vulnerable state:false
      - flag GruntyDeath
      - flag finally:!
      - queue queue:Grunty clear id:Grunty
      - execute as_server "citizens reload"
    - else:
      - chat "<&e><&l>How da fuq did you kill me"
      - health false
      - vulnerable state:false
      - queue queue:Grunty clear id:Grunty
GruntyAfter:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged GruntyDeath
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[Nicey]>:
          - chat "<&e><&l>I'm nice now! Dayum.... The zahmbies probably won't be... You can go tell the others I'm done being a meany."
        - else:
          - chat "<&e><&l>Ouch Fucker! Dying hurts bitch... Don't do that... I'll be nice.... Jeebus...."
          - execute as_server "pex group witch user add <player.name>"
GruntStop:
  Type: Task
  Script:
    - attack stop
    - chat "<&e><&l>Leave if you know what's good for you!"
    - walk location:<server.flag[Gruntilda_Spot]>
GruntGo:
  Type: Task
  Script:
    - attack
    - chat "<&e><&l>you beter get out"
    - run GruntStop delay:15s
FightFail:
  Type: Task
  Script:
    - narrate "<4><&l>You have failed to defeat Gruntilda! Try again bitch!"
    - queue queue:Grunty clear id:Grunty
QuestDone:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup witch
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "You're a witch now"
