HopperDrive:
  Type: World
  Events:
    On Player Clicks In HOPPER:
      - if <context.item.lore> == lCowville:
        - narrate "<&4><&l>You pay $1,000 and the driver takes you to Cowville"
        - teleport <player> location:<server.flag[CowvilleWagon]>
        - take money qty:1000
        - determine cancelled

      - else if <context.item.lore> == lSandyCastle:
        - narrate "<&4><&l>You pay $1,000 and the driver takes you to SandyCastle"
        - teleport <player> location:<server.flag[SandyCastleWagon]>
        - take money qty:1000
        - determine cancelled

      - else if <context.item.lore> == lCastleton:
        - narrate "<&4><&l>You pay $1,000 and the driver takes you to Castleton"
        - teleport <player> location:<server.flag[CastletonWagon]>
        - take money qty:1000
        - determine cancelled


Driver:
  Type: Assignment
  Interact Scripts:
  - 1 DriveWagon
  Actions:
    On Assignment:
      - trigger name:proximity toggle:true radius:5
      - flag npc sitSpot:<npc.locaton>
    On Enter Proximity:
      - run script:SitDown

DriveWagon:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.money> > 999:

          - if <player.location.regions.contains[cowville]>:
            - chat "<&e><&l>Hello <player.name> where would you like to go?"
            - inventory open d:<server.flag[CowvilleHopper].as_location.inventory>
          
          - else if <player.location.regions.contains[asscastle]>:
            - chat "<&e><&l>Hello <player.name> where would you like to go?"
            - inventory open d:<server.flag[SandyCastleHopper].as_location.inventory>
          
          
          - else if <player.location.regions.contains[castleton]>:
            - chat "<&e><&l>Hello <player.name> where would you like to go?"
            - inventory open d:<server.flag[CastletonHopper].as_location.inventory>

        - else:
          - chat "<&e><&l>You don't have enough money"
SitDown:
  Type: Task
  Script:
    - teleport <npc> <npc.flag[sitSpot]>
    - animate sit <npc>
