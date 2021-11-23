Admiral:
  Type: Assignment
  Interact Scripts:
    - 3 CommanderQuest
    - 2 CaptainQuest
    - 1 NotPilot

CaptainQuest:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged inGuild:Pilot
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.group[Captain]>:
          - chat "<&e><&l>Hello Captain"

        - else if <player.flag[CaptainDuring]>:
          - run script:CaptainCheck instantly

        - else if <player.group[Pilot]>:
          - chat "<&e><&l>Hello there Pilot are you interested in advancing in the Pilot's Guild?"

        - else:
          - chat "<&e><&l>I'm confused"

      Chat Trigger:
        1:
          Trigger: /Yes/ I'd love to be a Captain.
          Script:
            - if <player.flag[inGuild]> == Pilot && <player.group[Pilot]>:
              - CHAT "<&a>Good!"

              - if <player.mcmmo.level[Acrobatics]> > 199 && <player.mcmmo.level[WoodCutting]> > 149:
                - flag CaptainDuring

              - else:
                - chat "<&e><&l>Sorry you'll need to train your levels higher."
                - narrate "<&1><&l>Required Acrobatics<&co> <&e><&l>200"
                - narrate "<&1><&l>Required WoodCutting<&co> <&e><&l>150"
                - narrate "<&4><&l>Current Acrobatics<&co> <&e><&l><player.mcmmo.level[Acrobatics]>"
                - narrate "<&4><&l>Current WoodCutting<&co> <&e><&l><player.mcmmo.level[WoodCutting]>"

            - else:
              - chat "yes what?"

        2:
          Trigger: /No/ Im not interested.
          Script:
           - CHAT "<&a>Alright thats fine..."

CaptainCheck:
  Type: Task
  Script:
    - if <player.flag[parachuteCount]> == null:
      - flag parachuteCount:0

    - if <player.flag[woolCount]> == null:
      - flag woolCount:0

    - if <player.flag[parachuteCount]> > 299 && <player.flag[woolCount]> > 799:
      - define CaptainStats true

    - if <[CaptainStats]> == true:
      - chat "You can be a Captain"
      - execute as_server "pex group Captain user add <player.name>"
      - ex flag CaptainDuring:!

    - else:
      - chat "<&e><&l>I'm sorry but you must have used the <&1><&l>Parachute 300 Times <&e><&l>and placed <&1><&l>800 wool"
      - narrate "<&4><&l>Current Parachute Count:<&e><&l><player.flag[parachuteCount]>"
      - narrate "<&4><&l>Current Wool Count:<&e><&l><player.flag[woolCount]>"

CommanderQuest:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - inGroup Donor
    - inGroup Captain
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.group[Commander]>:
          - chat "<&e><&l>Hello Commander"

        - else if <player.flag[CommanderDuring]>:
          - run script:CommanderCheck instantly

        - else if <player.group[Captain]>:
          - chat "<&e><&l>Hello there Captain are you interested in advancing in the Captain's Guild?"

        - else:
          - chat "<&e><&l>I'm confused"

      Chat Trigger:
        1:
          Trigger: /Yes/ I'd love to be a Commander.
          Script:
            - if <player.flag[inGuild]> == Pilot && <player.group[Captain]>:
              - CHAT "<&a>Good!"

              - if <player.mcmmo.level[Acrobatics]> > 349 && <player.mcmmo.level[WoodCutting]> > 299:
                - flag CommanderDuring

              - else:
                - chat "<&e><&l>Sorry you'll need to train your levels higher."
                - narrate "<&1><&l>Required Acrobatics<&co> <&e><&l>350"
                - narrate "<&1><&l>Required WoodCutting<&co> <&e><&l>300"
                - narrate "<&4><&l>Current Acrobatics<&co> <&e><&l><player.mcmmo.level[Acrobatics]>"
                - narrate "<&4><&l>Current WoodCutting<&co> <&e><&l><player.mcmmo.level[WoodCutting]>"

            - else:
              - chat "yes what?"

        2:
          Trigger: /No/ Im not interested.
          Script:
           - CHAT "<&a>Alright thats fine..."

CommanderCheck:
  Type: Task
  Script:
    - if <player.flag[parachuteCount]> == null:
      - flag parachuteCount:0

    - if <player.flag[woolCount]> == null:
      - flag woolCount:0

    - if <player.flag[obsidianCount]> == null:
      - flag obsidianCount:0

    - if <player.flag[parachuteCount]> > 499 && <player.flag[woolCount]> > 1499 && <player.flag[obsidianCount]> > 999:
      - define CommanderStats true

    - if <[CommanderStats]> == true:
      - chat "You can be a Commander"
      - execute as_server "pex group Commander user add <player.name>"
      - execute as_server "pex group Captain user remove <player.name>"
      - ex flag CommanderDuring:!

    - else:
      - chat "<&e><&l>I'm sorry but you must have used the <&1><&l>Parachute 500 Times <&e><&l>and placed <&1><&l>1500 wool <&e><&l>and <&1><&l>1000 Obsidian"
      - narrate "<&4><&l>Current Parachute Count:<&e><&l><player.flag[parachuteCount]>"
      - narrate "<&4><&l>Current Wool Count:<&e><&l><player.flag[woolCount]>"
      - narrate "<&4><&l>Current Obsidian Count:<&e><&l><player.flag[ObsidianCount]>"
