Farrus:
  Type: Assignment
  Interact Scripts:
  - 7 ^Unkown
  - 8 ^Strike
  - 9 ^During
  - 10 ^desert1
  - 11 ^desert2
  - 12 ^desertdone
  - 13 ^desertafter
  - 24 ^Agro
  - 25 ^After
desert1:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - flagged desert
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>I be Farrus man, I be spying on the bitch ass duneys. They be wantin shit I can tell. Infiltrate their base and report back"
        - flag desert1
desert2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - flagged desert1
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>I said you best be gettin yo triflin ass down in that desert ma nig befo you get raped."
desertdone:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - flagged water
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Oh dayum.... Dose Niggas be so poor dey be not even havin water. Damn doo they ain't gonna attack us."
        - flag desertdone
desertafter:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - flagged desertdone
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "&a>Dayum... Niggas don't even got water.... Report this to Hans."
