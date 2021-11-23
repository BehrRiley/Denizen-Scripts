Cox:
  Type: Assignment
  Interact Scripts:
  - 1 CoxQuest

CoxQuest:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[coxDone]>:
          - chat "<&e><&l>Thanks for all your help"

        - else if <player.flag[caoDone]>:
          - chat "<&e><&l>Damnit... How did he get one of mooshrooms? It seems only a matter of time before he exterminates them from this island..."
          - flag caoDone:!
          - flag coxDuring:!
          - flag coxDone
          - run script:coxFinish

        - else if <player.flag[caoQuest]>:
          - chat "<&e><&l>You were caught?! Well you're lucky you escaped... Just report to me if you have any news."

        - else if <player.flag[boardCao]>:
          - chat "Head out to Chairman Cao's ship... Those Nikes will definitely fool them."

        - else if <player.flag[hasNikes]> && <player.equipment.boots.lore> == lNikes:
          - chat "<&e><&l>Oh shit a pirate!!! GUARDS"
          - narrate "<&4><&l><player.name><&co> No wait its me! <player.name>"
          - chat "<&e><&l>Wow sorry... Those fine ass Nikes fooled me... I was sure pirates were invading the castle. You'll definitely fool those pirates with those..."
          - flag hasNikes:!
          - flag boardCao

        - else if <player.flag[hasNikes]>:
          - chat "<&e><&l>So... Colin tells me he got you some pirate clothes let's see them"

        - else if <player.flag[pirateClothes]>:
          - chat "<&e><&l>Like I said... Go see ColinPirate... Hes an ex pirate. He will tell you how to fool them"

        - else if <player.flag[cannonShot]||0> > 49:
          - chat "<&e><&l>I saw what you did.... That Chairman Cao must have been terrified."
          - narrate "<&4><&l><player.name><&co> I know.... I shot 50 pieces of tnt at him."
          - chat "<&e><&l>You're going to love our next one.... You're going to board his ship."
          - narrate "<&4><&l><player.name><&co> How?"
          - chat "<&e><&l>You're going to disguise as a pirate... Go see ColinPirate... Hes an ex pirate. He will tell you how to fool them"
          - flag pirateClothes

        - else if <player.flag[coxDuring]>:
          - chat "<&e><&l>Now that we have supplies... It's time to go on the offensive. Fire 50 shots of tnt from the Towns Cannons at Chairman Cao... That should give him the message."

        - else if <player.flag[cannonDone]> && <player.flag[prayerDone]> && <player.flag[farmerDone]> && <player.flag[hayDone]>:
          - chat "<&e><&l>Thanks for helping the townspeople... Now maybe we can finally fight back!"
          - flag hayDone:!
          - flag farmerDone:!
          - flag prayerDone:!
          - flag cannonDone:!
          - flag CoxDuring
          - run script:SiegeFinish

        - else:
          - chat "<&e><&l>I don't have time to talk right now <player.name>.... The townspeople are suffering from this siege."

SiegeFinish:
  Type: Task
  Script:
    - firework random
    - give money qty:5000
    - execute as_server "addcredits <player.name> 15"
    - narrate "You've earned $5,000"
    - narrate "You've earned 15 Mcmmo Credits"
    - narrate "You can fire the towns cannons"

CoxFinish:
  Type: Task
  Script:
    - firework random
    - give money qty:10000
    - execute as_server "addcredits <player.name> 25"
    - narrate "<&e><&l>You've earned $10,000"
    - narrate "<&e><&l>You've earned 25 Mcmmo Credits"
    - narrate "<&e><&l>You can now fire the ships cannons"
