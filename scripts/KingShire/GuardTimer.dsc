GuardTimer:
  type: world     
  events:
    On 5:00 in world:
      - run script:ArcherGuard delay:1
      - run Scipt:WallyGuard delay:1
      - run Scipt:HadrianSleep delay:1
    On 20:00 in world:
      - run script:ArcherSleep delay:1
      - run Scipt:WallySleep delay:1
      - run Scipt:HadrianGuard delay:1
ArcherGuard:
  type: task
  script:
    - animate entities:<npc> animation:stop_sleeping
    - wait 2
    - walk location:<Server.Flag[TowerTop]>
WallyGuard:
  Type: Task
  Script:
    - animate entities:<npc> animation:stop_sleeping
    - walk location:<Server.Flag[TowerDoor]>
    - animate animation:sleep
HadrianGuard:
  type: task
  script:
    - animate entities:<npc> animation:stop_sleeping
    - wait 2
    - walk location:<Server.Flag[TowerTop]>
HadrianSleep:
  type: task
  script:
    - walk location:<Server.Flag[HadrianBed]>
    - wait 10
    - animate entities:<npc> animation:sleep
WallySleep:
  type: task
  script:
    - walk location:<Server.Flag[WallyBed]>
    - wait 10
    - animate entities:<npc> animation:sleep
ArcherSleep:
  type: task
  script:
    - walk location:<Server.Flag[ArcherBed]>
    - wait 10
    - animate entities:<npc> animation:sleep
