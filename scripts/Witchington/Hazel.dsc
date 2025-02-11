Hazel:
  Type: Assignment
  Interact Scripts:
  - 0 Unknown
  - 1 HazelStart
  - 2 Grunty
  - 3 WitchWarned
  - 4 HazelAfter
HazelStart:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged zombietown
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[Hazel]>:
          - chat "<&e><&l>Others around town may still need help!"
        - else if <player.flag[killed4]>:
          - chat "<&e><&l>Thanks for getting rid of those zahmbies!"
          - flag Hazel
          - flag killed4:!
        - else if <player.flag[zombietown]>:
          - engage duration:60s
          - chat "<&e><&l>I've been having trouble with these dahmn zahmbies!!!"
          - playsound
          - walk
          - drop entity:zombie location:<server.flag[Hazel_Spot]> qty:15
          - chat "<&e><&l>Go Kill Zombies? I think? I'm confused about zombies.... Kill zombies!!!!"
          - run zombiefailed delay:60s id:zombiefail
          - listen kill type:entity target:zombie qty:10 script:killed4
killed4:
  Type: Task
  Script:
    - disengage
    - flag zombieclear2:!
    - execute as_op "killall zombie 50"
    - queue queue:zombiefail clear
    - flag killed4
    - narrate "<4e><&l>The rest of the zombies flee... Go see Hazel"
HazelAfter:
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
