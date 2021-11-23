CaptainBorat:
  Type: Assignment
  Interact Scripts:
  - 1 GiveRide


GiveRide:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.location.regions.contains[cowville]>:
          - chat "Hello <player.name> would you like to go back to NewTown? Only $1,000"
        - else:
          - chat "Hello <player.name> would you like to take a trip to Cowsville? Only $1,000"

      Chat Trigger:
        1:
          Trigger: /yes/ I'd love to go
          Script:
          - run script:TripCheck


TripCheck:
  Type: Task
  Script:
    - if <player.money> > 999:
      - if <player.location.regions.contains[cowville]>:
        - take money qty:1000
        - narrate "You arrive in Newtown"
        - teleport <player> <server.flag[newtown]>

      - else:
        - take money qty:1000
        - narrate "You arrive in Cowville"
        - teleport <player> <server.flag[cowville]>

    - else:
      - chat "You don't got enough money"
