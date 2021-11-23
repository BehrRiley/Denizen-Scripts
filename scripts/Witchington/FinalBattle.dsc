MatildaFight1:
  Type: Task
  Script:
    - walk npc location:<server.flag[Matilda_Fight1]>
    - run script:battlescript
    - Sentry Commands
BattleScript:
  Type: Task
  Script:
    - drop entity:zombie location:<server.flag[Matilda_Fight1]> qty:6
    - drop entity:zombie location:<server.flag[Mildred_Fight]> qty:6
    - drop entity:zombie location:<server.flag[Hazel_Fight]> qty:6
    - drop entity:zombie location:<server.flag[Minerva_Fight]> qty:6
    - listen kill type:entity target:zombie qty:10 script:BattleScript2
MatildaFight2:
  Type: Task
  Script:
    - walk location:<server.flag[Matilda_Fight2]>
    - Sentry Commands
BattleScript2:
  Type: Task
  Script:
    - run script:MatildaFight2
    - wait 10
    - drop entity:zombie location:<server.flag[Matilda_Fight]> qty:6
    - drop entity:zombie location:<server.flag[Glenda_Fight]> qty:6
    - drop entity:zombie location:<server.flag[Luna_Fight> qty:6
    - drop entity:zombie location:<server.flag[Wanda_Fight]> qty:6
    - listen kill type:entity target:zombie qty:10 script:BattleFinish
BattleFinish:
  Type: Task
  Script:
    - execute as_server "butcher"
    - execute as_server "citizens reload"
    - execute as_server "citizens save"
    - narrate "You have defeated the zombies! Now go defeat Gruntilda."
    - flag Finally
    - flag spawnered:!
BattleQuit:
  Type: Task
  Script:
    - execute as_server "butcher"
    - narrate "You've failed to be a good fighter dummy...."
    - queue cancel id:zombiebattle
