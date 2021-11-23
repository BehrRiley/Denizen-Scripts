Gyntha:
  Type: Assignment
  Interact Scripts:
    - 3 BrewmasterQuest
    - 2 SpellCasterQuest
    - 1 Notwizard

SpellCasterQuest:
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
          - chat "<&e><&l>You must be a donor to rank up in the Guild"

        - else if <player.flag[SpellCasterDuring]>:
          - run script:SpellCasterCheck instantly

        - else if <player.group[wizard]>:
          - chat "<&e><&l>Hello there wizard are you interested in advancing in the SpellCaster's Guild?"

        - else:
          - chat "<&e><&l>I'm confused"

      Chat Trigger:
        1:
          Trigger: /Yes/ I'd love to be a SpellCaster.
          Script:
            - if <player.flag[inGuild]> == Mage && <player.group[wizard]>:
              - CHAT "<&a>Good!"

              - if <player.mcmmo.level[Taming]> > 199 && <player.mcmmo.level[Archery]> > 249:
                - flag SpellCasterDuring

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

Notwizard:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "I'm only interested in talking to Wizards"

SpellCasterCheck:
  Type: Task
  Script:
    - if <player.flag[spellCastCount]> == null:
      - flag spellCastCount:0

    - if <player.flag[enchantCount]> == null:
      - flag enchantCount:0

    - if <player.flag[enchantCount]> > 99 && <player.flag[spellCastCount]> > 299:
      - define SpellCasterStats true

    - if <[SpellCasterStats]> == true:
      - chat "You can be a SpellCaster"
      - flag SpellCasterDuring:!
      - execute as_server "pex group SpellCaster user add <player.name>"

    - else:
      - chat "<&e><&l>I'm sorry but you must have casted at least <&1><&l>300 Spells <&e><&l>and <&1><&l>enchanted 100 items"
      - narrate "<&4><&l>Current Spellcast Count:<&e><&l><player.flag[spellCastCount]>"
      - narrate "<&4><&l>Current Enchant Count:<&e><&l><player.flag[enchantCount]>"

BrewmasterQuest:
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

        - else if <player.flag[BrewmasterDuring]>:
          - run script:BrewmasterCheck instantly

        - else if <player.group[SpellCaster]>:
          - chat "<&e><&l>Hello there SpellCaster are you interested in advancing in the Brewmaster's Guild?"

        - else:
          - chat "<&e><&l>I'm confused"

      Chat Trigger:
        1:
          Trigger: /Yes/ I'd love to be a Brewmaster.
          Script:
            - if <player.flag[inGuild]> == Mage && <player.group[SpellCaster]>:
              - CHAT "<&a>Good!"

              - if <player.mcmmo.level[Taming]> > 99 && <player.mcmmo.level[Archery]> > 149:
                - flag BrewmasterDuring

              - else:
                - chat "<&e><&l>Sorry you'll need to train your levels higher."
                - narrate "<&1><&l>Required Taming<&co> <&e><&l>100"
                - narrate "<&1><&l>Required Archery<&co> <&e><&l>150"
                - narrate "<&4><&l>Current Taming<&co> <&e><&l><player.mcmmo.level[Taming]>"
                - narrate "<&4><&l>Current Archery<&co> <&e><&l><player.mcmmo.level[Archery]>"

            - else:
              - chat "yes what?"

        2:
          Trigger: /No/ Im not interested.
          Script:
           - CHAT "<&a>Alright thats fine..."

BrewmasterCheck:
  Type: Task
  Script:
    - if <player.flag[spellCastCount]> == null:
      - flag spellCastCount:0

    - if <player.flag[enchantCount]> == null:
      - flag enchantCount:0

    - if <player.flag[brewCount]> == null:
      - flag brewCount:0

    - if <player.flag[enchantCount]> > 299 && <player.flag[spellCastCount]> > 499 && <player.flag[brewCount]> > 199:
      - define BrewmasterStats true

    - if <[BrewmasterStats]> == true:
      - chat "You can be a Brewmaster"
      - flag BrewmasterDuring:!
      - execute as_server "pex group Brewmaster user add <player.name>"
      - execute as_server "pex group SpellCaster user add <player.name>"

    - else:
      - chat "<&e><&l>I'm sorry but you must have casted at least <&1><&l>500 Spells <&e><&l>Brewed 200 Times <&e><&l>and <&1><&l>enchanted 300 items"
      - narrate "<&4><&l>Current Spellcast Count:<&e><&l><player.flag[spellCastCount]>"
      - narrate "<&4><&l>Current Enchant Count:<&e><&l><player.flag[enchantCount]>"
      - narrate "<&4><&l>Current Brew Count:<&e><&l><player.flag[brewCount]>"
