BouncerOne:  
  type: assignment
  interact scripts:
  - 1 DoorBouncer
  Actions:
    On Assignment:
      - trigger name:proximity toggle:true radius:3
    On Enter Proximity:
      - run script:DoorBounce
DoorBounce:
  Type: Task
  Script:
    - if <player.equipment.boots.lore> == lNikes && <npc.world.time.period> == night:
      - chat "Dayumm dose Nikes Be Fresh  Get yo ass up in da club mah nig."
    - else if <npc.world.time.period> == night:
      - chat "Nigga get yo punk ass outta here with dose to' up ass shoes nigga dayum."
      - shoot entities:<player> destination:<Server.Flag[Bounced]>
    - else:
DoorBouncer:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.equipment.boots.lore> == lNikes && <npc.world.time.period> == night:
          - chat "Dayum Niggah dose shoes be hawt niggah dayum. I want me sum of dose"
        - else if <player.equipment.boots.lore> == lNikes && <npc.world.time.period> == night:
          - chat "Oh LAWDY look at dem fucked up shoes.... Get dafuq up out dis bitch."
          - shoot entities:<player> destination:<Server.Flag[Bounced]> duration:5s
        - else:
          - chat "Arggh matey we be Pirates!"
