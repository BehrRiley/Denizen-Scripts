Doodie:
  Type: Assignment
  Interact Scripts:
  - 1 Wife
  Actions:
    On Assignment:
      - trigger name:proximity toggle:true radius:10

    On Enter Proximity:
      - animate sleep <npc>

Wife:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[wifeDone]>:
          - narrate "<&a><&l>She looks like shes doing better"

        - else:
          - narrate "<&4><&l>This bitch is definitely dying"
