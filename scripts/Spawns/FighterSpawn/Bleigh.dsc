Bleigh:
  Type: Assignment
  Interact Scripts:
    - 2 VeteranQuest
    - 1 NotCrusader

VeteranQuest:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged inGuild:Fighter
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.group[Veteran]>:
          - chat "<&e><&l>Hello Veteran"

        - else if <player.flag[VeteranDuring]>:
          - run script:VeteranCheck instantly

        - else if <player.group[Crusader]>:
          - chat "<&e><&l>Hello there Crusader are you interested in advancing in the Fighter's Guild?"

        - else:
          - chat "<&e><&l>I'm confused"

      Chat Trigger:
        1:
          Trigger: /Yes/ I'd love to be a Veteran.
          Script:
            - if <player.flag[inGuild]> == Fighter && <player.group[Crusader]>:
              - CHAT "<&a>Good!"

              - if <player.mcmmo.level[Swords]> > 199 && <player.mcmmo.level[Axes]> > 149:
                - flag VeteranDuring

              - else:
                - chat "<&e><&l>Sorry you'll need to train your levels higher."
                - narrate "<&1><&l>Required Swords<&co> <&e><&l>200"
                - narrate "<&1><&l>Required Axes<&co> <&e><&l>150"
                - narrate "<&4><&l>Current Swords<&co> <&e><&l><player.mcmmo.level[Swords]>"
                - narrate "<&4><&l>Current Axes<&co> <&e><&l><player.mcmmo.level[Axes]>"

            - else:
              - chat "yes what?"

        2:
          Trigger: /No/ Im not interested.
          Script:
           - CHAT "<&a>Alright thats fine..."

NotCrusader:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "I'm only interested in speaking in speaking with Crusaders."

VeteranCheck:
  Type: Task
  Script:
    - if <player.flag[BanditKillCount]> == null:
      - flag BanditKillCount:0

    - if <player.flag[DemonyteKillCount]> == null:
      - flag DemonyteKillCount:0

    - if <player.flag[GuardianKillCount]> == null:
      - flag GuardianKillCount:0

    - if <player.flag[DemonyteKillCount]> > 99 && <player.flag[BanditKillCount]> > 199 && <player.flag[GuardianKillCount]> > 10:
      - define VeteranStats true

    - if <[VeteranStats]> == true:
      - chat "You can be a Veteran"
      - execute as_server "pex group Crusader user remove <player.name>"
      - execute as_server "pex group Veteran user add <player.name>"
      - ex flag VeteranDuring:!

    - else:
      - chat "<&e><&l>I'm sorry but you still need need to have killed at least <&1><&l>100 Demonytes <&e><&l>killed <&1><&l>200 PeePeeBandits <&e><&l>and killed 10 <&1><&l>Soul Guardians"
      - narrate "<&4><&l>Current Bandit Kills:<&e><&l><player.flag[BanditKillCount]>"
      - narrate "<&4><&l>Current Demonyte Kills:<&e><&l><player.flag[DemonyteKillCount]>"
      - narrate "<&4><&l>Current Soul Guardian Kills:<&e><&l><player.flag[GuardianKillCount]>"

SwordsmanQuest:
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
        - if <player.group[Swordsman]>:
          - chat "<&e><&l>Hello Swordsman"

        - else if <player.flag[SwordsmanDuring]>:
          - run script:SwordsmanCheck instantly

        - else if <player.group[Veteran]>:
          - chat "<&e><&l>Hello there Veteran are you interested in advancing in the Fighter's Guild?"

        - else:
          - chat "<&e><&l>I'm confused"

      Chat Trigger:
        1:
          Trigger: /Yes/ I'd love to be a Swordsman.
          Script:
            - if <player.flag[inGuild]> == Fighter && <player.group[Veteran]>:
              - CHAT "<&a>Good!"

              - if <player.mcmmo.level[Swords]> > 499 && <player.mcmmo.level[Axes]> > 349:
                - flag SwordsmanDuring

              - else:
                - chat "<&e><&l>Sorry you'll need to train your levels higher."
                - narrate "<&1><&l>Required Swords<&co> <&e><&l>500"
                - narrate "<&1><&l>Required Axes<&co> <&e><&l>350"
                - narrate "<&4><&l>Current Swords<&co> <&e><&l><player.mcmmo.level[Swords]>"
                - narrate "<&4><&l>Current Axes<&co> <&e><&l><player.mcmmo.level[Axes]>"

            - else:
              - chat "yes what?"

        2:
          Trigger: /No/ Im not interested.
          Script:
           - CHAT "<&a>Alright thats fine..."

SwordsmanCheck:
  Type: Task
  Script:
    - if <player.flag[BanditKillCount]> == null:
      - flag BanditKillCount:0

    - if <player.flag[DemonyteKillCount]> == null:
      - flag DemonyteKillCount:0

    - if <player.flag[GuardianKillCount]> == null:
      - flag GuardianKillCount:0

    - if <player.flag[DemonyteKillCount]> > 149 && <player.flag[BanditKillCount]> > 299 && <player.flag[GuardianKillCount]> > 24:
      - define SwordsmanStats true

    - if <[SwordsmanStats]> == true:
      - chat "You can be a Swordsman"
      - execute as_server "pex group Veteran user remove <player.name>"
      - execute as_server "pex group Swordsman user add <player.name>"
      - ex flag SwordsmanDuring:!

    - else:
      - chat "<&e><&l>I'm sorry but you still need need to have killed at least <&1><&l>150 Demonytes <&e><&l>killed <&1><&l>300 PeePeeBandits <&e><&l>and killed <&1><&l>25 Soul Guardians"
      - narrate "<&4><&l>Current Bandit Kills:<&e><&l><player.flag[BanditKillCount]>"
      - narrate "<&4><&l>Current Demonyte Kills:<&e><&l><player.flag[DemonyteKillCount]>"
      - narrate "<&4><&l>Current Soul Guardian Kills:<&e><&l><player.flag[GuardianKillCount]>"
