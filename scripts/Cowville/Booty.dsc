PirateBooty:
  Type: Assignment
  Interact Scripts:
  - 1 BootyStuff
  Actions:
    On Assignment:
      - trigger name:proximity toggle:true radius:5
    On Enter Proximity:
      - run script:PirateCheck

BootyStuff:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - run script:PirateCheck

PirateCheck:
  Type: Task
  Script:
    - if <player.equipment.boots.lore> == lNikes:
      - chat "<&e><&l>Oh dayum them Nikes is fine! Welcome aboard pirate"

    - else:
      - chat "<&e><&l>You're not a pirate get off my boat"
      - harm <player> 3
      - push <player> origin:<player.location> destination:<player.location.add[-10,0,10]>
