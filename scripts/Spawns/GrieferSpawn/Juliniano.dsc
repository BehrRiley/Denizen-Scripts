Juliniano:
  Type: Assignment
  Interact Scripts:
    - 3 SpyQuest
    - 2 RogueQuest
    - 1 NotBandit

RogueQuest:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged inGuild:Griefer
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.group[Thief]>:
          - chat "You must be a donor to rank up further"

        - else if <player.group[Rogue]>:
          - chat "<&e><&l>Hello Rogue"

        - else if <player.flag[RogueDuring]>:
          - run script:RogueCheck instantly

        - else if <player.group[Bandit]>:
          - chat "<&e><&l>Hello there Bandit are you interested in advancing in the Griefer's Guild?"

        - else:
          - chat "<&e><&l>I'm confused"

      Chat Trigger:
        1:
          Trigger: /Yes/ I'd love to be a Rogue.
          Script:
            - if <player.flag[inGuild]> == Griefer && <player.group[Bandit]>:
              - CHAT "<&a>Good!"

              - if <player.mcmmo.level[Unarmed]> > 99 && <player.mcmmo.level[Repair]> > 49:
                - flag RogueDuring

              - else:
                - chat "<&e><&l>Sorry you'll need to train your levels higher."
                - narrate "<&1><&l>Required Unarmed<&co> <&e><&l>100"
                - narrate "<&1><&l>Required Repair<&co> <&e><&l>50"
                - narrate "<&4><&l>Current Unarmed<&co> <&e><&l><player.mcmmo.level[Unarmed]>"
                - narrate "<&4><&l>Current Repair<&co> <&e><&l><player.mcmmo.level[Repair]>"

            - else:
              - chat "yes what?"

        2:
          Trigger: /No/ Im not interested.
          Script:
           - CHAT "<&a>Alright thats fine..."

NotBandit:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "Not Hello"

RogueCheck:
  Type: Task
  Script:
    - if <player.flag[TnTCount]> == null:
      - flag TnTCount:0

    - if <player.flag[creeperCount]> == null:
      - flag creeperCount:0

    - if <player.flag[TnTCount]> > 499 && <player.flag[creeperCount]> > 24:
      - define RogueStats true

    - if <[RogueStats]> == true:
      - chat "You can be a Rogue"
      - flag RogueDuring:!
      - execute as_server "pex group rogue user add <player.name>"

    - else:
      - chat "<&e><&l>I'm sorry but you must have lit at least <&1><&l>500 TnT <&e><&l>and used <&1><&l>25 creeper eggs"
      - narrate "<&4><&l>Current Creeper Count:<&e><&l><player.flag[creeperCount]>"
      - narrate "<&4><&l>Current Tnt Count:<&e><&l><player.flag[TnTCount]>"

SpyQuest:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup Donor
    - inGroup Thief
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.group[Assassin]> OR <player.group[Spy]> && <player.group[Explosives]>:
          - chat "<&e><&l>Greetings Guildmaster"

        - else if <player.flag[SpyDuring]>:
          - run script:SpyCheck instantly

        - else if <player.group[thief]>:
          - chat "<&e><&l>Hello there thief are you interested in advancing in the Griefer's Guild?"

        - else:
          - chat "<&e><&l>I'm confused"

      Chat Trigger:
        1:
          Trigger: /Yes/ I'd love to be a Spy.
          Script:
            - if <player.flag[inGuild]> == Griefer && <player.group[thief]>:
              - CHAT "<&a>Good!"

              - if <player.mcmmo.level[Unarmed]> > 299 && <player.mcmmo.level[Repair]> > 199:
                - flag SpyDuring

              - else:
                - chat "<&e><&l>Sorry you'll need to train your levels higher."
                - narrate "<&1><&l>Required Unarmed<&co> <&e><&l>300"
                - narrate "<&1><&l>Required Repair<&co> <&e><&l>200"
                - narrate "<&4><&l>Current Unarmed<&co> <&e><&l><player.mcmmo.level[Unarmed]>"
                - narrate "<&4><&l>Current Repair<&co> <&e><&l><player.mcmmo.level[Repair]>"

            - else:
              - chat "yes what?"

        2:
          Trigger: /No/ Im not interested.
          Script:
           - CHAT "<&a>Alright thats fine..."

SpyCheck:
  Type: Task
  Script:
    - if <player.flag[TnTCount]> == null:
      - flag TnTCount:0

    - if <player.flag[creeperCount]> == null:
      - flag creeperCount:0

    - if <player.flag[ghastCount]> == null:
      - flag ghastCount:0

    - if <player.flag[TnTCount]> > 1999 && <player.flag[creeperCount]> > 99 && <player.flag[enchantCount]> > 99:
      - define SpyStats true

    - if <[SpyStats]> == true:
      - chat "You can be a Spy"
      - flag SpyDuring:!
      - execute as_server "pex group Spy user add <player.name>"
      - execute as_server "pex group thief user remove <player.name>"

    - else:
      - chat "<&e><&l>I'm sorry but you must have lit at least <&1><&l>2000 TnT <&e><&l>and used <&1><&l>100 creeper eggs <&e><&l>and enchanted <&1><&l>100 items"
      - narrate "<&4><&l>Current Creeper Count:<&e><&l><player.flag[creeperCount]>"
      - narrate "<&4><&l>Current Tnt Count:<&e><&l><player.flag[TnTCount]>"
      - narrate "<&4><&l>Current Enchant Count:<&e><&l><player.flag[enchantCount]>"
