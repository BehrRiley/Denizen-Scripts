Wanda:
  Type: Assignment
  Interact Scripts:
  - 0 Unknown
  - 1 WandaStart
  - 2 Grunty
  - 3 WitchWarned
  - 4 WandaAfter
WandaStart:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged zombietown
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[Wanda]>:
          - chat "<&e><&l>Others around town may still need help!"
        - else if <player.flag[killed6]>:
          - chat "<&e><&l>Thanks for getting rid of those zahmbies!"
          - flag Wanda
          - flag killed6:!
        - else if <player.flag[zombietown]>:
          - engage duration:60s
          - chat "<&e><&l>I've been having trouble with these dahmn zahmbies!!!"
          - playsound
          - walk
          - drop entity:zombie location:<server.flag[Wanda_Spot]> qty:15
          - chat "<&e><&l>El Derpo!! Del ZOMBEEZO EL CAMINAR"
          - run zombiefailed delay:60s id:zombiefail
          - listen kill type:entity target:zombie qty:10 script:killed6
killed6:
  Type: Task
  Script:
    - disengage
    - flag zombieclear2:!
    - queue queue:zombiefail clear
    - flag killed6
    - execute as_op "killall zombie 50"
    - narrate "<4e><&l>The rest of the zombies flee... Go see Wanda"
WandaAfter:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup witch
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "<&e><&l>Well done"
