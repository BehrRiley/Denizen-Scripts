God:
  Type: Assignment
  Interact Scripts:
    - 3 PatriarchStart
    - 1 CardinalStart

CardinalStart:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.group[Cardinal]>:
          - chat "You must be a donor to rank up further"

        - else if <player.flag[CardinalDuring]>:
          - run script:CardinalCheck

        - else if <player.group[Bishop]>:
          - chat "Hello Bishop are you looking to advance in the church?"

        - else:
          - narrate "I'm Confused"
      Chat Trigger:
        1:
          Trigger: /Yes/ I'd love to be a cardinal
          Script:
          - if <player.ingroup[Bishop]>:
            - chat "Let's see..."
            - if <player.mcmmo.level[herbalism]> > 149 && <player.mcmmo.level[fishing]> > 99:
              - chat "You can be considered for Bishop"
              - flag CardinalDuring

            - else:
              - chat "<&e><&l>Sorry you'll need to train your levels higher."
              - narrate "<&1><&l>Required Herbalism<&co> <&e><&l>150"
              - narrate "<&1><&l>Required Fishing<&co> <&e><&l>100"
              - narrate "<&4><&l>Current Herbalism<&co> <&e><&l><player.mcmmo.level[herbalism]>"
              - narrate "<&4><&l>Current Fishing<&co> <&e><&l><player.mcmmo.level[fishing]>"
 
CardinalCheck:
  Type: Task
  Script:
    - if <player.flag[sacrificeCount]> > 74 && <player.flag[PrayerCount]> > 149:
      - define CardinalStats true

    - if <[Cardinaltats]> == true:
      - chat "You can be a Cardinal"
      - ex flag CardinalDuring:!

    - else:
      - chat "<&e><&l>I'm sorry but you still need need at least <&1><&l>74 Sacrifice Points <&e><&l>and used <&1><&l>150 Prayers"
      - narrate "<&4><&l>Current sacrifice points:<&e><&l><player.flag[sacrificeCount]>"
      - narrate "<&4><&l>Current Prayers:<&e><&l><player.flag[PrayerCount]>"

PatriarchStart:
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
        - if <player.group[Patriarch]>:
          - chat "Hello Patriarch"

        - else if <player.flag[PatriarchDuring]>:
          - run script:PatriarchCheck

        - else if <player.group[Cardinal]>:
          - chat "Hello Cardinal are you looking to advance in the church?"
      Chat Trigger:
        1:
          Trigger: /Yes/ I'd love to be a Patriarch
          Script:
          - if <player.ingroup[Cardinal]>:
            - chat "Let's see..."
            - if <player.mcmmo.level[herbalism]> > 149 && <player.mcmmo.level[fishing]> > 99:
              - chat "You can be considered for Cardinal"
              - flag PatriarchDuring

            - else:
              - chat "<&e><&l>Sorry you'll need to train your levels higher."
              - narrate "<&1><&l>Required Herbalism<&co> <&e><&l>150"
              - narrate "<&1><&l>Required Fishing<&co> <&e><&l>100"
              - narrate "<&4><&l>Current Herbalism<&co> <&e><&l><player.mcmmo.level[herbalism]>"
              - narrate "<&4><&l>Current Fishing<&co> <&e><&l><player.mcmmo.level[fishing]>"
 
PatriarchCheck:
  Type: Task
  Script:
    - if <player.flag[sacrificeCount]> > 124 && <player.flag[PrayerCount]> > 299 && <player.flag[altarPrayerCount]> > 14:
      - define PatriarchStats true

    - if <[Patriarchtats]> == true:
      - execute
      - execute as_server "pex group patriarch user add <player.name>"
      - execute as_server "pex group cardinal user remove <player.name>"
      - chat "You can be a Patriarch"
      - flag PatriarchDuring:!

    - else:
      - chat "<&e><&l>I'm sorry but you still need need at least <&1><&l>125 Sacrifice Points <&e><&l>Prayed at <&1><&l>15 Altars <&e><&l>and used <&1><&l>300 Prayers"
      - narrate "<&4><&l>Current sacrifice points:<&e><&l><player.flag[sacrificeCount]>"
      - narrate "<&4><&l>Current Prayers:<&e><&l><player.flag[PrayerCount]>"
      - narrate "<&4><&l>Current Prayers:<&e><&l><player.flag[altarPrayerCount]>"
