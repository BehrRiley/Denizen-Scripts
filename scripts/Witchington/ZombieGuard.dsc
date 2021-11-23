"ZombieGuard":
  type: assignment
  interact scripts:
  - 10 Sitting
  Actions:
    On Assignment:
      - trigger name:proximity toggle:true radius:10
    On Enter Proximity:
      - run script:sitting
"Sitting":
  type: Task
  Script:
    - if <player.equipment.helmet> == 397:2:
      - chat "<&e><&l>LOOK A FELLOW ZAHMBIE"
      - walk location:<server.flag[Test_Spot]>
    - else:
      - run Attack
stopattack:
  Type: Task
  Script:
    - chat "<&e><&l>Im TIRED of running"
    - attack stop
    - walk location:<server.flag[Test_Spot]>
stopattack2:
  Type: Task
  Script:
    - chat "<&e><&l>Im TIRED of running"
    - attack stop
    - walk location:<server.flag[Test_Spot2]>
attack:
  Type: task
  Script:
    - chat "<&e><&l>YEAH WE KILL ALL HYOOMANS."
    - run script:stopattack delay:15s
    - attack
attack2:
  Type: task
  Script:
    - chat "<&e><&l>LOOK A HYOOMUHM LETS EET ITSS BRAAAYYYYNNNNNSSS."
    - run script:stopattack2 delay:15s
    - attack
"ZombieGuard2":
  type: assignment
  interact scripts:
  - 10 Sitting2
  Actions:
    On Assignment:
      - trigger name:proximity toggle:true radius:5
    On Enter Proximity:
      - run script:Sitting2
"Sitting2":
  type: Task
  Script:
    - if <player.equipment.helmet> == 397:2:
      - chat "<&e><&l>YEAH HE COOL, WE DONT KILL ZAHMBIES"
      - walk location:<server.flag[Test_Spot2]>
    - else:
      - run Attack2
attack2:
  Type: task
  Script:
    - chat "<&e><&l>LOOK A HYOOMUHM LETS EET ITSS BRAAAYYYYNNNNNSSS."
    - run script:stopattack2 delay:15s
    - attack
"ZombieGuard4":
  type: assignment
  interact scripts:
  Actions:
    On Assignment:
      - trigger name:proximity toggle:true radius:4
    On Enter Proximity:
      - run script:Sitting3
"Sitting3":
  type: Task
  Script:
    - if <player.equipment.helmet> == 397:2:
      - chat "<&e><&l>HOWDEE ZAHMBIE GRUNTY INSIDE"
      - walk location:<server.flag[Test_Spot3]>
    - else:
      - run Attack3
attack3:
  Type: task
  Script:
    - chat "<&e><&l>HOW YOO GET IN HEER HYOOMAN... YOO DEAD!"
    - run script:stopattack3 delay:15s
    - attack
stopattack3:
  Type: Task
  Script:
    - chat "<&e><&l>YOO TOO FASSSST"
    - attack stop
    - walk location:<server.flag[Test_Spot3]>
