Dexter:
  Type: Assignment
  Interact Scripts:
    - 3 SummonerQuest
    - 2 WizardQuest
    - 1 NotMagician

WizardQuest:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged inGuild:Mage
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.group[SpellCaster]>:
          - chat "You must be a donor to rank up further"

        - else if <player.group[Wizard]>:
          - chat "<&e><&l>Hello Wizard"

        - else if <player.flag[WizardDuring]>:
          - run script:WizardCheck instantly

        - else if <player.group[Magician]>:
          - chat "<&e><&l>Hello there Magician are you interested in advancing in the Wizard's Guild?"

        - else:
          - chat "<&e><&l>I'm confused"

      Chat Trigger:
        1:
          Trigger: /Yes/ I'd love to be a Wizard.
          Script:
            - if <player.flag[inGuild]> == Mage && <player.group[Magician]>:
              - CHAT "<&a>Good!"

              - if <player.mcmmo.level[Taming]> > 49 && <player.mcmmo.level[Archery]> > 99:
                - flag WizardDuring

              - else:
                - chat "<&e><&l>Sorry you'll need to train your levels higher."
                - narrate "<&1><&l>Required Taming<&co> <&e><&l>50"
                - narrate "<&1><&l>Required Archery<&co> <&e><&l>100"
                - narrate "<&4><&l>Current Taming<&co> <&e><&l><player.mcmmo.level[Taming]>"
                - narrate "<&4><&l>Current Archery<&co> <&e><&l><player.mcmmo.level[Archery]>"

            - else:
              - chat "yes what?"

        2:
          Trigger: /No/ Im not interested.
          Script:
           - CHAT "<&a>Alright thats fine..."

NotMagician:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "Not Hello"

WizardCheck:
  Type: Task
  Script:
    - if <player.flag[spellCastCount]> == null:
      - flag spellCastCount:0

    - if <player.flag[enchantCount]> == null:
      - flag enchantCount:0

    - if <player.flag[spellCastCount]> > 49 && <player.flag[spellCastCount]> > 199:
      - define WizardStats true

    - if <[WizardStats]> == true:
      - chat "You can be a Wizard"
      - flag WizardDuring:!
      - execute as_server "pex group wizard user add <player.name>"
      - execute as_server "pex group magician user remove <player.name>"

    - else:
      - chat "<&e><&l>I'm sorry but you must have casted at least <&1><&l>200 Spells <&e><&l>and <&1><&l>enchanted 50 items"
      - narrate "<&4><&l>Current Spellcast Count:<&e><&l><player.flag[spellCastCount]>"
      - narrate "<&4><&l>Current Enchant Count:<&e><&l><player.flag[enchantCount]>"

SummonerQuest:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - inGroup Donor
    - inGroup SpellCaster
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.group[Brewmaster]> OR <player.group[Summoner]> OR <player.group[Enchanter]>:
          - chat "<&e><&l>Congratulations"

        - else if <player.flag[SummonerDuring]>:
          - run script:SummonerCheck instantly

        - else if <player.group[SpellCaster]>:
          - chat "<&e><&l>Hello there SpellCaster are you interested in advancing in the Summoner's Guild?"

        - else:
          - chat "<&e><&l>I'm confused"

      Chat Trigger:
        1:
          Trigger: /Yes/ I'd love to be a Summoner.
          Script:
            - if <player.flag[inGuild]> == Mage && <player.group[SpellCaster]>:
              - CHAT "<&a>Good!"

              - if <player.mcmmo.level[Taming]> > 199 && <player.mcmmo.level[Archery]> > 249:
                - flag SummonerDuring

              - else:
                - chat "<&e><&l>Sorry you'll need to train your levels higher."
                - narrate "<&1><&l>Required Taming<&co> <&e><&l>200"
                - narrate "<&1><&l>Required Archery<&co> <&e><&l>250"
                - narrate "<&4><&l>Current Taming<&co> <&e><&l><player.mcmmo.level[Taming]>"
                - narrate "<&4><&l>Current Archery<&co> <&e><&l><player.mcmmo.level[Archery]>"

            - else:
              - chat "yes what?"

        2:
          Trigger: /No/ Im not interested.
          Script:
           - CHAT "<&a>Alright thats fine..."

SummonerCheck:
  Type: Task
  Script:
    - if <player.flag[spellCastCount]> == null:
      - flag spellCastCount:0

    - if <player.flag[enchantCount]> == null:
      - flag enchantCount:0

    - if <player.flag[brewCount]> == null:
      - flag brewCount:0

    - if <player.flag[enchantCount]> > 249 && <player.flag[spellCastCount]> > 499 && <player.flag[creeperCount]> > 149:
      - define SummonerStats true

    - if <[SummonerStats]> == true:
      - chat "You can be a Summoner"
      - flag SummonerDuring:!
      - execute as_server "pex group Summoner user add <player.name>"
      - execute as_server "pex group SpellCaster user remove <player.name>"

    - else:
      - chat "<&e><&l>I'm sorry but you must have casted at least <&1><&l>500 Spells <&e><&l>Used 150 Creeper Eggs <&e><&l>and <&1><&l>enchanted 250 items"
      - narrate "<&4><&l>Current Spellcast Count:<&e><&l><player.flag[spellCastCount]>"
      - narrate "<&4><&l>Current Enchant Count:<&e><&l><player.flag[enchantCount]>"
      - narrate "<&4><&l>Current Creeper Count:<&e><&l><player.flag[creeperCount]>"
