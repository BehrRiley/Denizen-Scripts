Steven:
  Type: Assignment
  Interact Scripts:
    - 3 DesignerQuest
    - 2 CraftsmanQuest
    - 1 NotBuilder

CraftsmanQuest:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged inGuild:Builder
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.group[Foreman]>:
          - chat "You must be a donor to rank up further"

        - else if <player.group[Craftsman]>:
          - chat "<&e><&l>Hello Craftsman"

        - else if <player.flag[CraftsmanDuring]>:
          - run script:CraftsmanCheck instantly

        - else if <player.group[Builder]>:
          - chat "<&e><&l>Hello there Builder are you interested in advancing in the Builder's Guild?"

        - else:
          - chat "<&e><&l>I'm confused"

      Chat Trigger:
        1:
          Trigger: /Yes/ I'd love to be a Craftsman.
          Script:
            - if <player.flag[inGuild]> == Builder && <player.group[Builder]>:
              - CHAT "<&a>Good!"

              - if <player.mcmmo.level[Mining]> > 199 && <player.mcmmo.level[Excavation]> > 149:
                - flag CraftsmanDuring

              - else:
                - chat "<&e><&l>Sorry you'll need to train your levels higher."
                - narrate "<&1><&l>Required Mining<&co> <&e><&l>200"
                - narrate "<&1><&l>Required Excavation<&co> <&e><&l>150"
                - narrate "<&4><&l>Current Mining<&co> <&e><&l><player.mcmmo.level[Mining]>"
                - narrate "<&4><&l>Current Excavation<&co> <&e><&l><player.mcmmo.level[Excavation]>"

            - else:
              - chat "yes what?"

        2:
          Trigger: /No/ Im not interested.
          Script:
           - CHAT "<&a>Alright thats fine..."

NotBuilder:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "Not Hello"

CraftsmanCheck:
  Type: Task
  Script:
    - if <player.flag[BlockCount]> == null:
      - flag BlockCount:0

    - if <player.flag[ObsidianCount]> == null:
      - flag ObsidianCount:0

    - if <player.flag[BlockCount]> > 9999 && <player.flag[ObsidianCount]> > 499:
      - define CraftsmanStats true

    - if <[CraftsmanStats]> == true:
      - chat "You can be a Craftsman"
      - flag CraftsmanDuring:!
      - execute as_server "pex group Craftsman user add <player.name>"
      - execute as_server "pex group Builder user remove <player.name>"

    - else:
      - chat "<&e><&l>I'm sorry but you still need need at least <&1><&l>10,000 blocks <&e><&l>and placed <&1><&l>500 Obsidian"
      - narrate "<&4><&l>Current Block Count:<&e><&l><player.flag[BlockCount]>"
      - narrate "<&4><&l>Current Obsidian Count:<&e><&l><player.flag[ObsidianCount]>"

DesignerQuest:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - inGroup Foreman
    - inGroup Donor
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.group[Designer]> OR <player.group[Fortifier]> OR <player.group[Mechanic]>:
          - chat "Congratulations Guild Master"

        - else if <player.flag[DesignerDuring]>:
          - run script:DesignerCheck

        - else:
          - chat "Hello <player.name> are you become a designer in the Builders Guild?"

      Chat Trigger:
        1:
          Trigger: /Yes/ I'd love to be a Designer.
          Script:
            - if <player.flag[inGuild]> == Builder && <player.group[Foreman]>:
              - CHAT "<&a>Good!"

              - if <player.mcmmo.level[Mining]> > 499 && <player.mcmmo.level[Excavation]> > 349:
                - flag DesignerDuring

              - else:
                - chat "<&e><&l>Sorry you'll need to train your levels higher."
                - narrate "<&1><&l>Required Mining<&co> <&e><&l>500"
                - narrate "<&1><&l>Required Excavation<&co> <&e><&l>350"
                - narrate "<&4><&l>Current Mining<&co> <&e><&l><player.mcmmo.level[Mining]>"
                - narrate "<&4><&l>Current Excavation<&co> <&e><&l><player.mcmmo.level[Excavation]>"

            - else:
              - chat "yes what?"

DesignerCheck:
  Type: Task
  Script:
    - if <player.flag[BlockCount]> == null:
      - flag BlockCount:0

    - if <player.flag[ObsidianCount]> == null:
      - flag ObsidianCount:0

    - if <player.flag[BedrockCount]> == null:
      - flag BedrockCount:0

    - if <player.flag[woolCount]> == null:
      - flag woolCount:0

    - if <player.flag[BlockCount]> > 19999 && <player.flag[ObsidianCount]> > 999 && <player.flag[woolCount]> > 999:
      - define DesignerStats true

    - if <[DesignerStats]> == true:
      - chat "You can be a Designer"
      - flag DesignerDuring:!
      - execute as_server "pex group Designer user add <player.name>"
      - execute as_server "pex group Foreman user remove <player.name>"

    - else:
      - chat "<&e><&l>I'm sorry but you still need need at least <&1><&l>20,000 blocks <&e><&l> placed <&1><&l>1000 Obsidian <&e><&l>and <&1><&l>1000 Wool to become a designer"
      - narrate "<&4><&l>Current Block Count:<&e><&l><player.flag[BlockCount]>"
      - narrate "<&4><&l>Current Obsidian Count:<&e><&l><player.flag[ObsidianCount]>"
      - narrate "<&4><&l>Current Wool Count:<&e><&l><player.flag[WoolCount]>"
