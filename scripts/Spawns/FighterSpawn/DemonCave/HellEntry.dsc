HellEntry:
  Type: World
  Events:
    On Player Right Clicks Nether_Brick:
      - if <context.location> == <server.flag[hellPortal]> && <player.equipment.helmet||air> == human_skull[skull_skin=Soul_Guardian]:

        - if <player.flag[gotSoulHead]> OR <player.flag[hellDone]>:
          - narrate "<&4><&l>It worked you're going to hell"
          - teleport <server.flag[hellSpot]>
          - if <player.flag[gotSoulHead]>:
            - run script:hellFinish

HellFinish:
  Type: Task
  Script:
    - flag gotSoulHead:!
    - flag hellDone
    - firework random
    - give 397:1 qty:3
    - firework random
    - execute as_server "addcredits <player.name> 20"
    - narrate "<&4><&l>You've finished ..."
