Sentura:
  Type: Assignment
  Interact Scripts:
    - 3 AssassinQuest
    - 2 ThiefQuest
    - 1 NotRogue

ThiefQuest:
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
          - chat "<&e><&l>You must be a donor to rank up further"

        - else if <player.flag[ThiefDuring]>:
          - run script:ThiefCheck instantly

        - else if <player.group[Rogue]>:
          - chat "<&e><&l>Hello there Rogue are you interested in advancing in the Griefer's Guild?"

        - else:
          - chat "<&e><&l>I'm confused"

      Chat Trigger:
        1:
          Trigger: /Yes/ I'd love to be a Thief.
          Script:
            - if <player.flag[inGuild]> == Griefer && <player.group[Rogue]>:
              - CHAT "<&a>Good!"

              - if <player.mcmmo.level[Unarmed]> > 149 && <player.mcmmo.level[Repair]> > 99:
                - flag ThiefDuring

              - else:
                - chat "<&e><&l>Sorry you'll need to train your levels higher."
                - narrate "<&1><&l>Required Unarmed<&co> <&e><&l>150"
                - narrate "<&1><&l>Required Repair<&co> <&e><&l>100"
                - narrate "<&4><&l>Current Unarmed<&co> <&e><&l><player.mcmmo.level[Unarmed]>"
                - narrate "<&4><&l>Current Repair<&co> <&e><&l><player.mcmmo.level[Repair]>"

            - else:
              - chat "yes what?"

        2:
          Trigger: /No/ Im not interested.
          Script:
           - CHAT "<&a>Alright thats fine..."

NotRogue:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "I'm only interested in talking to Rogues"

ThiefCheck:
  Type: Task
  Script:
    - if <player.flag[TnTCount]> == null:
      - flag TnTCount:0

    - if <player.flag[creeperCount]> == null:
      - flag creeperCount:0

    - if <player.flag[TnTCount]> > 799 && <player.flag[creeperCount]> > 49:
      - define ThiefStats true

    - if <[ThiefStats]> == true:
      - chat "You can be a Thief"
      - flag ThiefDuring:!
      - execute as_server "pex group Thief user add <player.name>"

    - else:
      - chat "<&e><&l>I'm sorry but you must have lit at least <&1><&l>800 TnT <&e><&l>and used <&1><&l>50 creeper eggs"
      - narrate "<&4><&l>Current Creeper Count:<&e><&l><player.flag[creeperCount]>"
      - narrate "<&4><&l>Current Tnt Count:<&e><&l><player.flag[TnTCount]>"

AssassinQuest:
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

        - else if <player.flag[AssassinDuring]>:
          - run script:AssassinCheck instantly

        - else if <player.group[thief]>:
          - chat "<&e><&l>Hello there thief are you interested in advancing in the Griefer's Guild?"

        - else:
          - chat "<&e><&l>I'm confused"

      Chat Trigger:
        1:
          Trigger: /Yes/ I'd love to be a Assassin.
          Script:
            - if <player.flag[inGuild]> == Griefer && <player.group[thief]>:
              - CHAT "<&a>Good!"

              - if <player.mcmmo.level[Unarmed]> > 299 && <player.mcmmo.level[Repair]> > 199:
                - flag AssassinDuring

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

AssassinCheck:
  Type: Task
  Script:
    - if <player.flag[TnTCount]> == null:
      - flag TnTCount:0

    - if <player.flag[creeperCount]> == null:
      - flag creeperCount:0

    - if <player.flag[TnTCount]> > 1999 && <player.flag[creeperCount]> > 99 && <player.flag[redstoneCount]> > 199:
      - define AssassinStats true

    - if <[AssassinStats]> == true:
      - chat "You can be a Assassin"
      - flag AssassinDuring:!
      - execute as_server "pex group Assassin user add <player.name>"
      - execute as_server "pex group thief user remove <player.name>"

    - else:
      - chat "<&e><&l>I'm sorry but you must have lit at least <&1><&l>2000 TnT <&e><&l>and used <&1><&l>100 creeper eggs <&e><&l>and placed <&1><&l>200 redstone"
      - narrate "<&4><&l>Current Creeper Count:<&e><&l><player.flag[creeperCount]>"
      - narrate "<&4><&l>Current Tnt Count:<&e><&l><player.flag[TnTCount]>"
      - narrate "<&4><&l>Current Redstone Count:<&e><&l><player.flag[redstoneCount]>"
