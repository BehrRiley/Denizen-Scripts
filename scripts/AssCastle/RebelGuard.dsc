AssGuard:
  Type: Assignment
  Interact Scripts:
  - 1 GuardAss
  Actions:
    On Assignment:
      - flag guardSpot:<npc.location>
      - trigger name:proximity toggle:true radius:5 cooldown:30

GuardAss:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - walk <npc.flag[guardSpot]>
        - if <player.flag[turretDone]>:
          - chat "<&e><&l>Thanks for helping... It's only a matter of time before we take the casle back"
   
        - else if <player.flag[invaderDefeat]>:
          - chat "<&e><&l>Glad we fought those invaders off <player.name>... Go see Joepe down in the hideout"
   
        - else if <player.flag[fledBandit]>:
          - flag turretStarted
          - chat "<&e><&l>Were lucky they ran! Stay in the turret and hold this"
          - give arrow qty:100 to:<npc.location.find.blocks[chest].within[15].get[1].as_location.inventory>
          - health state:true
          - health 500 <npc>
          - heal <npc>
          - flag invaderKilled:0
          - give arrow
          - run script:TurretCheck delay:5s
   
        - else:
          - flag turretStarted
          - chat "<&e><&l>Were expecting an attack any minute! I need you up in that turret! Hold this"
          - give arrow qty:100 to:<npc.location.find.blocks[chest].within[15].get[1].as_location.inventory>
          - health state:true
          - health 500 <npc>
          - heal <npc>
          - flag invaderKilled:0
          - give arrow
          - run script:TurretCheck delay:5s
TurretCheck:
  Type: Task
  Script:
    - if <player.location.regions.contains[firstTurret]>:
      - run script:SandyAttack
      - run script:SandyAttack
      - run script:BailCheck
      - run script:BailCheck

    - else if <player.location.regions.contains[assCastle]>:
      - chat "<&e><&l>Hurry up and get to the turret! They are coming soon"
      - run script:TurretCheck delay:5s

    - else:
      - narrate "<&4><&l>You have fled.... what a bitch"
