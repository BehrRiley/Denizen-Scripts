Ulysius:
  Type: Assignment
  Interact Scripts:
    - 2 CrusaderQuest
    - 1 NotGuard

CrusaderQuest:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged inGuild:Fighter
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.group[Crusader]>:
          - chat "<&e><&l>Hello Crusader"

        - else if <player.flag[CrusaderDuring]>:
          - run script:CrusaderCheck instantly

        - else if <player.group[Guard]>:
          - chat "<&e><&l>Hello there Guard are you interested in advancing in the Fighter's Guild?"

        - else:
          - chat "<&e><&l>I'm confused"

      Chat Trigger:
        1:
          Trigger: /Yes/ I'd love to be a Crusader.
          Script:
            - if <player.flag[inGuild]> == Fighter && <player.group[Guard]>:
              - CHAT "<&a>Good!"

              - if <player.mcmmo.level[Swords]> > 99 && <player.mcmmo.level[Axes]> > 50:
                - flag CrusaderDuring

              - else:
                - chat "<&e><&l>Sorry you'll need to train your levels higher."
                - narrate "<&1><&l>Required Swords<&co> <&e><&l>100"
                - narrate "<&1><&l>Required Axes<&co> <&e><&l>50"
                - narrate "<&4><&l>Current Swords<&co> <&e><&l><player.mcmmo.level[Swords]>"
                - narrate "<&4><&l>Current Axes<&co> <&e><&l><player.mcmmo.level[Axes]>"

            - else:
              - chat "yes what?"

        2:
          Trigger: /No/ Im not interested.
          Script:
           - CHAT "<&a>Alright thats fine..."

NotGuard:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "Not Hello"

CrusaderCheck:
  Type: Task
  Script:
    - if <player.flag[BanditKillCount]> == null:
      - flag BanditKillCount:0

    - if <player.flag[DemonyteKillCount]> == null:
      - flag DemonyteKillCount:0

    - if <player.flag[DemonyteKillCount]> > 49 && <player.flag[BanditKillCount]> > 99:
      - define CrusaderStats true

    - if <[CrusaderStats]> == true:
      - chat "You can be a Crusader"
      - execute as_server "pex group guard user remove <player.name>"
      - execute as_server "pex group crusader user add <player.name>"
      - ex flag CrusaderDuring:!

    - else:
      - chat "<&e><&l>I'm sorry but you still need need to have killed at least <&1><&l>50 Demonytes <&e><&l>and killed <&1><&l>100 PeePeeBandits"
      - narrate "<&4><&l>Current Bandit Kills:<&e><&l><player.flag[BanditKillCount]>"
      - narrate "<&4><&l>Current Demonyte Kills:<&e><&l><player.flag[DemonyteKillCount]>"

ArcherQuest:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - inGroup Veteran
    - inGroup Donor
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.group[Archer]>:
          - chat "<&e><&l>Hello Archer"

        - else if <player.flag[ArcherDuring]>:
          - run script:ArcherCheck instantly

        - else if <player.group[Veteran]>:
          - chat "<&e><&l>Hello there Veteran are you interested in advancing in the Fighter's Guild?"

        - else:
          - chat "<&e><&l>I'm confused"

      Chat Trigger:
        1:
          Trigger: /Yes/ I'd love to be a Archer.
          Script:
            - if <player.flag[inGuild]> == Fighter && <player.group[Veteran]>:
              - CHAT "<&a>Good!"

              - if <player.mcmmo.level[Axes]> > 349 && <player.mcmmo.level[Archery]> > 499:
                - flag ArcherDuring

              - else:
                - chat "<&e><&l>Sorry you'll need to train your levels higher."
                - narrate "<&1><&l>Required Axes<&co> <&e><&l>350"
                - narrate "<&1><&l>Required Archery<&co> <&e><&l>500"
                - narrate "<&4><&l>Current Axes<&co> <&e><&l><player.mcmmo.level[Axes]>"
                - narrate "<&4><&l>Current Archery<&co> <&e><&l><player.mcmmo.level[Archery]>"

            - else:
              - chat "yes what?"

        2:
          Trigger: /No/ Im not interested.
          Script:
           - CHAT "<&a>Alright thats fine..."

ArcherCheck:
  Type: Task
  Script:
    - if <player.flag[BanditKillCount]> == null:
      - flag BanditKillCount:0

    - if <player.flag[DemonyteKillCount]> == null:
      - flag DemonyteKillCount:0

    - if <player.flag[GuardianKillCount]> == null:
      - flag GuardianKillCount:0

    - if <player.flag[DemonyteKillCount]> > 99 && <player.flag[BanditKillCount]> > 149 && <player.flag[GuardianKillCount]> > 14:
      - define ArcherStats true

    - if <[ArcherStats]> == true:
      - chat "You can be a Archer"
      - execute as_server "pex group Veteran user remove <player.name>"
      - execute as_server "pex group Archer user add <player.name>"
      - ex flag ArcherDuring:!

    - else:
      - chat "<&e><&l>I'm sorry but you still need need to have killed at least <&1><&l>100 Demonytes <&e><&l>killed <&1><&l>150 PeePeeBandits <&e><&l>and killed <&1><&l>15 Soul Guardians"
      - narrate "<&4><&l>Current Bandit Kills:<&e><&l><player.flag[BanditKillCount]>"
      - narrate "<&4><&l>Current Demonyte Kills:<&e><&l><player.flag[DemonyteKillCount]>"
      - narrate "<&4><&l>Current Soul Guardian Kills:<&e><&l><player.flag[GuardianKillCount]>"
