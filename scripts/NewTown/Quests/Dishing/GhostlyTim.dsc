Ghost:
  Type: Assignment
  Interact Scripts:
  - 1 Ghosty
  Actions:
    On Assignment:
      - trigger name:proximity toggle:true radius:10

    On Enter Proximity:
      - if <player.world.moon_phase> == 1:

      - else:
        - teleport <npc> <npc.flag[HellSpot]>

Ghosty:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.world.moon_phase> > 1:
          - teleport <npc> <npc.flag[HellSpot]>
          - chat "I<&e><&l>'m surprised to see you down here in Hell."

        - else if <player.flag[ghostDone]>:
          - chat "<&e><&l>Thanks for all your cookies..."

        - else if <player.inventory.qty[milk_bucket]> > 0 && <player.flag[gotCookies]>:
          - chat "<&e><&l>I love milk..."
          - flag gotCookies:!
          - take milk_bucket
          - playsound burp <player>
          - flag ghostDone
          - run script:GotMilk

        - else if <player.flag[gotCookies]>:
          - chat "<&e><&l>I'm thirsty"
          

        - else if <player.inventory.qty[cookie]> > 0:
          - chat "<&e><&l>I love cookies"
          - take cookie
          - playsound eat <player>
          - flag gotCookies

        - else:
          - chat "<&e><&l>I'm hungry..."

GotMilk:
  Type: Task
  Script:
    - flag ghostStart:!
    - flag questPoints:++
    - narrate "<&e><&l>Something seems to be happening to GhostlyTim"
    - chat "<&e><&l>You have released me from my cookieless existance.... Thank you, take this..."
    - execute as_server "addcredits <player.name> 10"
    - narrate "<&e><&l>You've receieved 10 mcmmo credits"
    - give money qty:5000
    - narrate "<&e><&l>You've receieved $5,000"
    - firework random
    - narrate "<&e><&l>You've finished Grave Digger Quest!"
