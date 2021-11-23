Wally:
  Type: Assignment
  Interact Scripts:
  - 1 WallyClick
WallyClick:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.location.world.time.period> == day && <player.flag[Archer]>:
          - chat "Hello <player.name> welcome to the Guard Tower"
          - run Script:Doorman
        - else if <player.location.world.time.period>  == night:
          - chat "Snore"
          - animate entity:<npc> animation:sleep
        - else:
          - chat "Who the fuck are you?"
Doorman:
  Type: Task
  Script:
    - if <player.location.world.time.period> == day:
      - switch location:<Server.Flag[Door1]> state:on
      - switch location:<Server.Flag[Door2]> state:on
      - chat "The door is around to the side."
      - run Script:DoorClose Delay:10s
    - else if <player.location.world.time.period> == night:
      - animate entity:<npc> animation:sleep
DoorClose:
  Type: Task
  Script:
      - switch location:<Server.Flag[Door1]> state:off
      - switch location:<Server.Flag[Door2]> state:off
