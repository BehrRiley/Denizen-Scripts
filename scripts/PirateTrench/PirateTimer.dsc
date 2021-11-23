PirateTimer:
  type: world     
  events:
    On 5:00 in world:
      - run script:SwampyDay delay:1
      - run script:PegDay delay:1
      - run script:PinkDay delay:1
      - run script:EnglishDay delay:1
      - run script:ColinDay delay:1
      - run script:TheTrollDay delay:1
      - run script:TesticleDay delay:1
      - run script:MannDay delay:1
      - run script:BouncerDay delay:1
      - run script:PenisDay delay:1
      - run script:DJDay delay:1
    On 20:00 in world:
      - run script:SwampyNight delay:1
      - run script:PegNight delay:1
      - run script:PinkNight delay:1
      - run script:EnglishNight delay:1
      - run script:ColinNight delay:1
      - run script:TheTrollNight delay:1
      - run script:TesticleNight delay:1
      - run script:MannNight delay:1
      - run script:BouncerNight delay:1
      - run script:PenisNight delay:1
      - run script:DJNight delay:1

SwampyDay:
  Type: Task
  Script:
    - walk location:<Server.Flag[swampyspot]>

SwampyNight:
  Type: Task
  Script:
  - walk location:<Server.Flag[SkyDeck1]>
  - run script:PirateBangLoop delay:15s

PegDay:
  Type: Task
  Script:
    - walk location:<Server.Flag[PegSpot]>

PegNight:
  Type: Task
  Script:
    - walk location:<Server.Flag[SkyDeck2]>
    - run script:PirateBanged delay:15s

PinkDay:
  Type: Task
  Script:
    - walk location:<Server.Flag[PinkSpot]>

PinkNight:
  Type: Task
  Script:
    - walk location:<Server.Flag[DanceFloor1]>
    - run script:PirateDanceLoop delay:5s

EnglishDay:
  Type: Task
  Script:
    - walk location:<Server.Flag[EnglishSpot]>

EnglishNight:
  Type: Task
  Script:
    - walk location:<Server.Flag[DanceFloor2]>
    - run script:PirateDanceLoop delay:10s

ColinDay:
  Type: Task
  Script:
    - walk location:<Server.Flag[ColinSpot]>

ColinNight:
  Type: Task
  Script:
    - walk location:<Server.Flag[DanceFloor3]>
    - run script:PirateDanceLoop delay:1s

TheTrollDay:
  Type: Task
  Script:
    - walk location:<Server.Flag[TheTrollSpot]>
    - queue cancel id:Bar

TheTrollNight:
  Type: Task
  Script:
    - walk location:<Server.Flag[BarSpot1]>
    - run script:PirateBarLoop delay:1s

TesticleDay:
  Type: Task
  Script:
    - walk location:<Server.Flag[TesticleSpot]>

TesticleNight:
  Type:
  Script:
    - walk location:<Server.Flag[BarSpot2]>
    - run script:PirateBarLoop delay:1s

MannDay:
  Type: Task
  Script:
    - walk location:<Server.Flag[MannSpot]>

MannNight:
  Type: Task
  Script:
    - walk location:<Server.Flag[BarSpot3]>
    - run script:PirateBarLoop delay:1s

BouncerDay:
  Type: Task
  Script:
    - walk location:<Server.Flag[BouncerSpot]>

BouncerNight:
  Type: Task
  Script: 
    - walk location:<Server.Flag[BouncerPost]>

DjDay:
  Type: Task
  Script:
    - walk location:<Server.Flag[DJBed]>
    - wait 30
    - animate entity:<npc> animation:sleep

DjNight:
  Type: Task
  Script:
    - animate entity:<npc> animation:stop_sleeping
    - walk location:<Server.Flag[DJBooth]>
    - run script:PirateBangLoop delay:15s

PenisDay:
  Type: Task
  Script:
    - walk location:<Server.Flag[PenisBed]>
    - wait 30
    - animate entity:<npc> animation:sleep

PenisNight:
  Type: Task
  Script:
    - animate entity:<npc> animation:stop_sleeping
    - walk location:<Server.Flag[BarSpot]>

PirateDanceLoop:
  Type: Task
  Script:
    - animate entities:<npc> animation:sneak
    - look entity:<npc> location:<Server.Flag[DanceFloor1]>
    - animate entities:<npc> animation:stop_sneaking
    - animate entities:<npc> animation:sneak
    - look entity:<npc> location:<Server.Flag[DanceFloor2]>
    - animate entities:<npc> animation:stop_sneaking
    - animate entities:<npc> animation:sneak
    - look entity:<npc> location:<Server.Flag[DanceFloor3]>
    - animate entities:<npc> animation:stop_sneaking
    - animate entities:<npc> animation:sneak
    - look entity:<npc> location:<Server.Flag[DanceFloor1]>
    - animate entities:<npc> animation:stop_sneaking
    - look entity:<npc> location:<Server.Flag[DanceFloor2]>
    - animate entities:<npc> animation:sit
    - look entity:<npc> location:<Server.Flag[DanceFloor3]>
    - animate entities:<npc> animation:stop_sitting
    - wait 2
    - animate entities:<npc> animation:sit
    - animate entities:<npc> animation:stop_sitting
    - wait 2
    - if <npc.location.world.time.period> == night:
      - run script:PirateDanceLoop delay:10slse:
      }
PirateBarLoop:
  Type: Task
  Script:
    - equip hand:373:16453
    - playsound sound:Drink location:<npc.location> volume:2
    - playsound sound:Burp location:<npc.location> volume:2
    - equip hand:!
    - wait 30
    - if <npc.location.world.time.period> == night:
      - run script:PirateBarLoop delay:5s
    - else:
PirateBangLoop:
  Type: Task
  Script:
    - animate entities:<npc> animation:sneak
    - animate entities:<npc> animation:stop_sneaking
    - if <npc.location.world.time.period> == night:
      - run script:PirateBangLoop
    - else:
PirateBanged:
  Type: Task
  Script:
    - if <npc.location.world.time.period> == night:
      - look entities:<npc> location:<server.flag[SkyDeck1]>
      - animate entities:<npc> animation:sleep
      - animate entities:<npc> animation:sit
      - run script:PirateBanged delay:60s
    - else:
      - animate entities:<npc> animation:stop_sleeping
      - animate entities:<npc> animation:stop_sitting
