David:
  Type: Assignment
  Interact Scripts:
  - 7 ^Unkown
  - 8 ^Strike
  - 9 ^During
  - 10 ^final
  - 11 ^final1
  - 12 ^finala
  - 13 ^battle1
  - 14 ^finalb
  - 15 ^battle2
  - 16 finalc
  - 17 ^battle3
  - 18 ^finald
  - 19 ^battle4
  - 20 ^finalafter
  - 24 ^Agro
  - 25 ^After
final:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - flagged air1
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT '<&a>Ha! So they sent you.... A nobody... I figured they were trying to kill me sending me up here.'
        - flag final
final1:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - flagged final
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT '<&a>Too late! Here they come! Mount the North Turret and Fire!'
        - execute as_op '/schem load empty'
        - execute as_op '/paste -o'
        - execute as_op '/schem load full1'
        - execute as_op '/paste -o'
        - flag battlestarty
finala:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - flagged battlestarty
    - ispowered location:-12978,252,28396,world
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>I said mount the North Turret! And type /ac Fire!"
battle1:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - -ispowered location:-12978,252,28396,world
    - flagged battlestarty
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT '<&a>Too late! Here they come! Mount the West Turret and Fire!'
        - execute as_op '/schem load empty'
        - execute as_op '/paste -o'
        - execute as_op '/schem load full2'
        - execute as_op '/paste -o'
        - flag battle1
finalb:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - flagged battle1
    - ispowered location:-12995,251,28417,world
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>I said mount the West Turret! And type /ac Fire!"
battle2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - -ispowered location:-12995,251,28417,world
    - flagged battle1
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>There's another get to the East Turret!"
        - execute as_op '/schem load empty'
        - execute as_op '/paste -o'
        - execute as_op '/schem load full3'
        - execute as_op '/paste -o'
        - flag battle2
finalc:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - flagged battle2
    - ispowered location:-12977,252,28436,world
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>I said mount the East Turret! And type /ac Fire!"
battle3:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - -ispowered location:-12977,252,28436,world
    - flagged battle2
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>There's another get to the South Turret!"
        - execute as_op '/schem load empty'
        - execute as_op '/paste -o'
        - execute as_op '/schem load full4'
        - execute as_op '/paste -o'
        - flag battle3
finald:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - flagged battle3
    - ispowered location:-12959,251,28417,world
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>I said mount the South Turret! And type /ac Fire!"
battle4:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - -ispowered location:-12959,251,28417,world
    - flagged battle3
  Steps:
    1:
      Click Trigger:
        Script:
        - give 287
        - CHAT "<&a>That looks like the last of them. Go check on Peter. Use this to get down."
        - execute as_server 'pex user <player.name> add skydiver.parachute.*'
        - execute as_op '/schem load empty'
        - execute as_op '/paste -o'
        - narrate "You can now Use the Parachute! Simply right click while holding string during a fall and your parachute will deploy!"
        - flag final1
finalafter:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - flagged final1
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Go check on Peter at the Church, make sure he got back down okay."
