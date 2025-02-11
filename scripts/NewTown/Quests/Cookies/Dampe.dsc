Dampe:
  Type: Assignment
  Interact Scripts:
  - 1 Digging
  Actions:
    On Complete Navigation:
      - run script:DampeDig

Digging:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - if <npc.flag[traveling]> == null:
          - narrate "<&e><&l>Dampe is busy digging...."
          - run script:DampeMove
          - flag npc traveling

        - else:
          - narrate "<&e><&l>Dampe seems to be looking for something"
          - run script:DampeDig delay:3s

DampeMove:
  Type: Task
  Script:
    - walk <npc.flag[digSpots].random> auto_range

DampeDig:
  Type: Task
  Script:
    - animate <npc> arm_swing
    - playsound dig_gravel <npc.location>
    - animate <npc> arm_swing
    - animate <npc> arm_swing
    - animate <npc> arm_swing
    - playsound dig_gravel <npc.location>
    - flag npc traveling:!
