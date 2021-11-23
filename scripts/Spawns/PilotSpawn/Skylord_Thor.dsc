Thor:
  Type: Assignment
  Interact Scripts:
    - 3 GunnerQuest
    - 2 PilotQuest
    - 1 NotCrewman

PilotQuest:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged inGuild:Pilot
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.group[Pilot]>:
          - chat "<&e><&l>Hello Pilot"

        - else if <player.flag[PilotDuring]>:
          - run script:PilotCheck instantly

        - else if <player.group[Crewman]>:
          - chat "<&e><&l>Hello there Crewman are you interested in advancing in the Pilot's Guild?"

        - else:
          - chat "<&e><&l>I'm confused"

      Chat Trigger:
        1:
          Trigger: /Yes/ I'd love to be a Pilot.
          Script:
            - if <player.flag[inGuild]> == Pilot && <player.group[Crewman]>:
              - CHAT "<&a>Good!"

              - if <player.mcmmo.level[Acrobatics]> > 99 && <player.mcmmo.level[WoodCutting]> > 49:
                - flag PilotDuring

              - else:
                - chat "<&e><&l>Sorry you'll need to train your levels higher."
                - narrate "<&1><&l>Required Acrobatics<&co> <&e><&l>100"
                - narrate "<&1><&l>Required WoodCutting<&co> <&e><&l>50"
                - narrate "<&4><&l>Current Acrobatics<&co> <&e><&l><player.mcmmo.level[Acrobatics]>"
                - narrate "<&4><&l>Current WoodCutting<&co> <&e><&l><player.mcmmo.level[WoodCutting]>"

            - else:
              - chat "yes what?"

        2:
          Trigger: /No/ Im not interested.
          Script:
           - CHAT "<&a>Alright thats fine..."

NotCrewman:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "Not Hello"

PilotCheck:
  Type: Task
  Script:
    - if <player.flag[parachuteCount]> == null:
      - flag parachuteCount:0

    - if <player.flag[creeperCount]> == null:
      - flag creeperCount:0

    - if <player.flag[parachuteCount]> > 199 && <player.flag[woolCount]> > 499:
      - define PilotStats true

    - if <[PilotStats]> == true:
      - chat "You can be a Pilot"
      - execute as_server "pex group pilot user add <player.name>"
      - ex flag PilotDuring:!

    - else:
      - chat "<&e><&l>I'm sorry but you must have used the <&1><&l>Parachute 200 Times <&e><&l>and placed <&1><&l>500 wool"
      - narrate "<&4><&l>Current Parachute Count:<&e><&l><player.flag[parachuteCount]>"
      - narrate "<&4><&l>Current Wool Count:<&e><&l><player.flag[woolCount]>"

GunnerQuest:
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
        - if <player.group[Gunner]>:
          - chat "<&e><&l>Hello Gunner"

        - else if <player.flag[GunnerDuring]>:
          - run script:GunnerCheck instantly

        - else if <player.group[Captain]>:
          - chat "<&e><&l>Hello there Captain are you interested in advancing in the Captain's Guild?"

        - else:
          - chat "<&e><&l>I'm confused"

      Chat Trigger:
        1:
          Trigger: /Yes/ I'd love to be a Gunner.
          Script:
            - if <player.flag[inGuild]> == Pilot && <player.group[Captain]>:
              - CHAT "<&a>Good!"

              - if <player.mcmmo.level[Acrobatics]> > 349 && <player.mcmmo.level[WoodCutting]> > 299:
                - flag GunnerDuring

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

GunnerCheck:
  Type: Task
  Script:
    - if <player.flag[parachuteCount]> == null:
      - flag parachuteCount:0

    - if <player.flag[woolCount]> == null:
      - flag woolCount:0

    - if <player.flag[TnTCount]> == null:
      - flag TnTCount:0

    - if <player.flag[parachuteCount]> > 499 && <player.flag[woolCount]> > 1499 && <player.flag[TnTCount]> > 999:
      - define GunnerStats true

    - if <[GunnerStats]> == true:
      - chat "You can be a Gunner"
      - execute as_server "pex group Gunner user add <player.name>"
      - execute as_server "pex group Captain user remove <player.name>"
      - ex flag GunnerDuring:!

    - else:
      - chat "<&e><&l>I'm sorry but you must have used the <&1><&l>Parachute 450 Times <&e><&l>and placed <&1><&l>1200 wool <&e><&l>and <&1><&l>Lit 1000 TnT"
      - narrate "<&4><&l>Current Parachute Count:<&e><&l><player.flag[parachuteCount]>"
      - narrate "<&4><&l>Current Wool Count:<&e><&l><player.flag[woolCount]>"
      - narrate "<&4><&l>Current Obsidian Count:<&e><&l><player.flag[ObsidianCount]>"
