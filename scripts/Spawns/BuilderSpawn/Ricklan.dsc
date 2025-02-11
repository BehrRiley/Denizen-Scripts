Ricklan:
  Type: Assignment
  Interact Scripts:
    - 3 FortifierQuest
    - 2 ForemanQuest
    - 1 NotCraftsman

ForemanQuest:
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
          - chat "<&e><&l>You must be a donor to rank up further"

        - else if <player.flag[ForemanDuring]>:
          - run script:ForemanCheck instantly

        - else if <player.group[Craftsman]>:
          - chat "<&e><&l>Hello there Craftsman are you interested in advancing in the Builder's Guild?"

        - else:
          - chat "<&e><&l>I'm confused"

      Chat Trigger:
        1:
          Trigger: /Yes/ I'd love to be a Foreman.
          Script:
            - if <player.flag[inGuild]> == Builder && <player.group[Craftsman]>:
              - CHAT "<&a>Good!"

              - if <player.mcmmo.level[Mining]> > 299 && <player.mcmmo.level[Excavation]> > 249:
                - flag ForemanDuring

              - else:
                - chat "<&e><&l>Sorry you'll need to train your levels higher."
                - narrate "<&1><&l>Required Mining<&co> <&e><&l>300"
                - narrate "<&1><&l>Required Excavation<&co> <&e><&l>250"
                - narrate "<&4><&l>Current Mining<&co> <&e><&l><player.mcmmo.level[Mining]>"
                - narrate "<&4><&l>Current Excavation<&co> <&e><&l><player.mcmmo.level[Excavation]>"

            - else:
              - chat "yes what?"
              - narrate targets:NiggerBob "Guild Value<&co><player.flag[inGuild]> IsBuilder<&co><player.group[builder]>"

        2:
          Trigger: /No/ Im not interested.
          Script:
           - CHAT "<&a>Alright thats fine..."

NotCraftsman:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "<&4><&l>I'm only interested in talking to Craftsman"

ForemanCheck:
  Type: Task
  Script:
    - if <player.flag[BlockCount]> == null:
      - flag BlockCount:0

    - if <player.flag[ObsidianCount]> == null:
      - flag ObsidianCount:0

    - if <player.flag[BedrockCount]> == null:
      - flag BedrockCount:0

    - if <player.flag[BlockCount]> > 19999 && <player.flag[ObsidianCount]> > 499 && <player.flag[bedrockCount]> > 19:
      - define ForemanStats true

    - if <[ForemanStats]> == true:
      - chat "You can be a Foreman"
      - flag ForemanDuring:!
      - execute as_server "pex group Foreman user add <player.name>"
      - execute as_server "pex group Craftsman user remove <player.name>"

    - else:
      - chat "<&e><&l>I'm sorry but you still need need at least <&1><&l>20,000 blocks <&e><&l> placed <&1><&l>500 Obsidian<&e><&l> and placed <&1><&l>20 Bedrock" 
      - narrate "<&4><&l>Current Block Count:<&e><&l><player.flag[BlockCount]>"
      - narrate "<&4><&l>Current Obsidian Count:<&e><&l><player.flag[ObsidianCount]>"
      - narrate "<&4><&l>Current Bedrock Count:<&e><&l><player.flag[BedrockCount]>"

FortifierQuest:
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
        - if <player.group[Fortifier]> OR <player.group[Designer]> OR <player.group[Mechanic]>:
          - chat "Congratulations Guild Master"

        - else if <player.flag[FortifierDuring]>:
          - run script:FortifierCheck

        - else:
          - chat "Hello <player.name> are you trying to become a fortifier in the Builders Guild?"

      Chat Trigger:
        1:
          Trigger: /Yes/ I'd love to be a Fortifier.
          Script:
            - if <player.flag[inGuild]> == Builder && <player.group[Foreman]>:
              - CHAT "<&a>Good!"

              - if <player.mcmmo.level[Mining]> > 499 && <player.mcmmo.level[Excavation]> > 349:
                - flag FortifierDuring

              - else:
                - chat "<&e><&l>Sorry you'll need to train your levels higher."
                - narrate "<&1><&l>Required Mining<&co> <&e><&l>500"
                - narrate "<&1><&l>Required Excavation<&co> <&e><&l>350"
                - narrate "<&4><&l>Current Mining<&co> <&e><&l><player.mcmmo.level[Mining]>"
                - narrate "<&4><&l>Current Excavation<&co> <&e><&l><player.mcmmo.level[Excavation]>"

            - else:
              - chat "yes what?"

FortifierCheck:
  Type: Task
  Script:
    - if <player.flag[BlockCount]> == null:
      - flag BlockCount:0

    - if <player.flag[ObsidianCount]> == null:
      - flag ObsidianCount:0

    - if <player.flag[BedrockCount]> == null:
      - flag BedrockCount:0

    - if <player.flag[BlockCount]> > 29999 && <player.flag[ObsidianCount]> > 1999 && <player.flag[BedrockCount]> > 99:
      - define FortifierStats true

    - if <[FortifierStats]> == true:
      - chat "You can be a Fortifier"
      - flag FortifierDuring:!
      - execute as_server "pex group Fortifier user add <player.name>"
      - execute as_server "pex group Foreman user remove <player.name>"

    - else:
      - chat "<&e><&l>I'm sorry but you still need need at least <&1><&l>30,000 blocks <&e><&l> placed <&1><&l>2000 Obsidian <&e><&l>and placed <&1><&l>100 Bedrock"
      - narrate "<&4><&l>Current Block Count:<&e><&l><player.flag[BlockCount]>"
      - narrate "<&4><&l>Current Obsidian Count:<&e><&l><player.flag[ObsidianCount]>"
      - narrate "<&4><&l>Current Bedrock Count:<&e><&l><player.flag[BedrockCount]>"
