Minerva:
  Type: Assignment
  Interact Scripts:
  - 0 Unknown
  - 1 MinervaStart
  - 2 Grunty
  - 3 WitchWarned
  - 4 MinervaAfter
MinervaStart:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged zombietown
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[Minerva]>:
          - chat "<&e><&l>Others around town may still need help!"
        - else if <player.flag[killed2]>:
          - chat "<&e><&l>Thanks for getting rid of those zahmbies!"
          - flag Minerva
          - flag killed2:!
        - else if <player.flag[zombietown]>:
          - engage duration:60s
          - chat "<&e><&l>I've been having trouble with these dahmn zahmbies!!!"
          - playsound
          - walk
          - drop entity:zombie location:<server.flag[Minerva_Spot]> qty:15
          - chat "<&e><&l>DAHM ZAHMBIES AND MAH TREHS! KILL DEHM ZAAHMMBIIIESS!!"
          - run zombiefailed delay:60s id:zombiefail
          - listen kill type:entity target:zombie qty:10 script:killed2
killed2:
  Type: Task
  Script:
    - disengage
    - flag zombieclear2:!
    - queue queue:zombiefail clear
    - flag killed2
    - execute as_op "killall zombie 50"
    - narrate "<4e><&l>The rest of the zombies flee... Go see minerva"
WitchWarned:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged spawnered
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "<&e><&l>Gruntilda is going to invade with zombies!!! Go Tell Matilda!"
Minverva:
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
