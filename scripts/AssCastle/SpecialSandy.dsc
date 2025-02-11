SpecialSandy:
  Type: Assignment
  Interact Scripts:
  - 1 Attacking
  Actions:
    On Assignment:
      - health state:true
      - health 100 <npc>
      - heal <npc> 
    On Death:
      - flag invaderKilled:++
      - narrate "<&4><&l>You've killed an invader"
      - if <player.flag[invaderKilled]> < 20:
        - narrate "<&4><&l>Here comes another"
        - run script:SandyAttack

      - else:
        - narrate "<&4><&l>You've fought off the invaders"
        - flag invaderDefeat
        - teleport 124 <npc[124].flag[guardSpot]>
        - vulnerable state:false
        - heal <npc>
        - teleport npc <npc.flag[fleeSpot]>


SandyAttack:
  Type: Task
  Script:
    - teleport npc <npc.flag[attackSpot]>
    - health 10 <npc>
    - vulnerable state:true
    - attack <npc> target:124
    - attack 124 target:125

BailCheck:
  Type: Task
  Script:
    - if <player.location.regions.contains[firstTurret]>:
      - run script:BailCheck delay:3s

    - else:
      - narrate "<&4><&l>The bandits leave... for now"
      - flag fledBandit
      - teleport npc <npc.flag[fleeSpot]>
