"Sit Test":
  type: assignment
  interact scripts:
  - 10 Sitting
"Sitting":
  type: interact
  Requirements:
    Mode: None
    List:
  steps:
    1:
      click trigger:
        script:
        - if <player.equipment.helmet> == 397:2:
          - chat "Im not attacking"
          - walk location:<server.flag[Test_Spot]>
        - else:
          - chat "Im attacking"
          - attack
          - run script:stopattack delay:15s
stopattack:
  Type: Task
  Script:
    - chat "Im stopping"
    - attack stop
    - walk location:<server.flag[Test_Spot]>
