Luna:
  Type: Assignment
  Interact Scripts:
  - 0 Unknown
  - 1 LunaStart
  - 3 WitchWarned
  - 4 LunaAfter
LunaStart:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged zombietown
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[Luna]>:
          - chat "<&e><&l>Others around town may still need help!"
        - else if <player.flag[killed7]>:
          - engage duration:60s
          - chat "<&e><&l>Thanks for getting rid of those zahmbies!"
          - flag Luna
          - flag killed7:!
        - else if <player.flag[zombietown]>:
          - chat "<&e><&l>I've been having trouble with these dahmn zahmbies!!!"
          - playsound
          - walk
          - drop entity:zombie location:<server.flag[Luna_Spot]> qty:15
          - chat "<&e><&l>There are ZAHMBIES!!KILL DEM PLEEZ NOOB"
          - run zombiefailed delay:60s id:zombiefail
          - listen kill type:entity target:zombie qty:10 script:killed7
killed7:
  Type: Task
  Script:
    - flag zombieclear7:!
    - queue queue:zombiefail clear
    - flag killed7
    - execute as_op "killall zombie 50"
    - narrate "<4e><&l>That was nuts The zombies all ran away... Go see Luna"
LunaAfter:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged Nicey
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "<&e><&l>Well done"
