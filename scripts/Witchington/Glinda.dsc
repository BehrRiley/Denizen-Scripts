Glinda:
  Type: Assignment
  Interact Scripts:
  - 0 Unknown
  - 1 GlindaStart
  - 2 Grunty
  - 3 WitchWarned
  - 4 GlindaAfter
GlindaStart:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged zombietown
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[Glinda]>:
          - chat "<&e><&l>Others around town may still need help!"
        - else if <player.flag[killed5]>:
          - chat "<&e><&l>Thanks for getting rid of those zahmbies!"
          - flag Glinda
          - flag killed5:!
        - else if <player.flag[zombietown]>:
          - engage duration:60s
          - chat "<&e><&l>I've been having trouble with these dahmn zahmbies!!!"
          - playsound
          - walk
          - drop entity:zombie location:<server.flag[Glinda_Spot]> qty:15
          - chat "<&e><&l>DURRR!! ZOMBIES R B DED SUNE! DURPEPPR DEEADAADD DURRRP"
          - run zombiefailed delay:60s id:zombiefail
          - listen kill type:entity target:zombie qty:10 script:killed5
killed5:
  Type: Task
  Script:
    - disengage
    - flag zombieclear2:!
    - queue queue:zombiefail clear
    - flag killed5
    - execute as_op "killall zombie 50"
    - narrate "<4e><&l>The rest of the zombies flee... Go see Glinda"
GlindaAfter:
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
