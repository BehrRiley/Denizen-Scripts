BlackJesus:
  Type: Assignment
  Interact Scripts:
    - 3 PacifistStart
    - 2 BishopQuest
    - 1 NotPriest

BishopQuest:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged inGuild:Priest
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.group[cardinal]>:
          - chat "<&e><&l>You must be a donor to rank up further"

        - else if <player.group[Bishop]>:
          - chat "<&e><&l>Hello Bishop"

        - else if <player.flag[BishopDuring]>:
          - run script:BishopCheck instantly

        - else if <player.group[Priest]>:
          - chat "<&e><&l>Hello there Priest are you interested in advancing in the Church?"

        - else:
          - chat "<&e><&l>I'm confused"

      Chat Trigger:
        1:
          Trigger: /Yes/ I'd love to be a priest.
          Script:
            - if <player.flag[inGuild]> == Priest && <player.group[Priest]>:
              - CHAT "<&a>Good!"

              - if <player.mcmmo.level[herbalism]> > 99 && <player.mcmmo.level[fishing]> > 50:
              - flag BishopDuring

            - else:
              - chat "<&e><&l>Sorry you'll need to train your levels higher."
              - narrate "<&1><&l>Required Herbalism<&co> <&e><&l>100"
              - narrate "<&1><&l>Required Fishing<&co> <&e><&l>50"
              - narrate "<&4><&l>Current Herbalism<&co> <&e><&l><player.mcmmo.level[herbalism]>"
              - narrate "<&4><&l>Current Fishing<&co> <&e><&l><player.mcmmo.level[fishing]>"

            - else:
              - chat "yes what?"

        2:
          Trigger: /No/ Im not interested.
          Script:
            - CHAT "<&a>Alright thats fine..."

NotPriest:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "Not Hello"

BishopCheck:
  Type: Task
  Script:
    - if <player.flag[sacrificeCount]> == null:
      - flag sacrificeCount:0

    - if <player.flag[prayerCount]> == null:
      - flag prayerCount:0

    - if <player.flag[sacrificeCount]> > 49 && <player.flag[PrayerCount]> > 99:
      - define BishopStats true

    - if <[BishopStats]> == true:
      - chat "<&e><&l>You can be a Bishop"
      - execute as_server "pex group priest user remove <player.name>"
      - execute as_server "pex group bishop user add <player.name>"
      - flag BishopDuring:!

    - else:
      - chat "<&e><&l>I'm sorry but you still need need at least <&1><&l>50 Sacrifice Points <&e><&l>and used <&1><&l>100 Prayers"
      - narrate "<&4><&l>Current sacrifice points:<&e><&l><player.flag[sacrificeCount]>"
      - narrate "<&4><&l>Current Prayers:<&e><&l><player.flag[PrayerCount]>"

PacifistStart:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - inGroup Donor
    - inGroup Cardinal
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.group[Pacifist]>:
          - chat "Hello Pacifist"

        - else if <player.flag[PacifistDuring]>:
          - run script:PacifistCheck

        - else if <player.group[Cardinal]>:
          - chat "Hello Cardinal are you looking to advance in the church?"
      Chat Trigger:
        1:
          Trigger: /Yes/ I'd love to be a Pacifist
          Script:
          - if <player.ingroup[Cardinal]>:
            - chat "Let's see..."
            - if <player.mcmmo.level[herbalism]> > 149 && <player.mcmmo.level[fishing]> > 99:
              - chat "You can be considered for Cardinal"
              - flag PacifistDuring

            - else:
              - chat "<&e><&l>Sorry you'll need to train your levels higher."
              - narrate "<&1><&l>Required Herbalism<&co> <&e><&l>150"
              - narrate "<&1><&l>Required Fishing<&co> <&e><&l>100"
              - narrate "<&4><&l>Current Herbalism<&co> <&e><&l><player.mcmmo.level[herbalism]>"
              - narrate "<&4><&l>Current Fishing<&co> <&e><&l><player.mcmmo.level[fishing]>"
 
PacifistCheck:
  Type: Task
  Script:
    - if <player.flag[sacrificeCount]> > 99 && <player.flag[PrayerCount]> > 499 && <player.flag[altarPrayerCount]> > 14:
      - define PacifistStats true

    - if <[Pacifisttats]> == true:
      - execute as_server "pex group pacifist user add <player.name>"
      - execute as_server "pex group cardinal user remove <player.name>"
      - chat "You can be a Pacifist"
      - flag PacifistDuring:!

    - else:
      - chat "<&e><&l>I'm sorry but you still need need at least <&1><&l>100 Sacrifice Points <&e><&l>Prayed at <&1><&l>15 Altars <&e><&l>and used <&1><&l>500 Prayers"
      - narrate "<&4><&l>Current sacrifice points:<&e><&l><player.flag[sacrificeCount]>"
      - narrate "<&4><&l>Current Prayers:<&e><&l><player.flag[PrayerCount]>"
      - narrate "<&4><&l>Current Prayers:<&e><&l><player.flag[altarPrayerCount]>"
