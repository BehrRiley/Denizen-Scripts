Joepe:
  Type: Assignment
  Interact Scripts:
  - 1 CastleMineQuest

CastleMineQuest:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[turretDone]>:
          - chat "<&e><&l>Thanks for all your help! It's only a matter of time before we take the castle back"

        - else if <player.flag[flagRaised]>:
          - flag flagRaised:!
          - flag turretStarted:!
          - flag invaderDefeat:!
          - flag TurretDone
          - chat "<&e><&l>Thank you <player.name>! You've helped us out!"
          - execute as_op "/schem load blackFlag"
          - execute as_op "/paste -o"
          - run script:TurretFinish

        - else if <player.flag[flagRaiser]>:
          - chat "<&e><&l>Get to the top of the tower and raise our flag"
          - switch <npc.location.find.blocks[lever].within[5].get[1]> state:on duration:3s

        - else if <player.flag[sandyKillCount]||0> > 99 && <player.flag[mineCleared]>:
          - chat "<&e><&l>Now for the final touch.... We need you to get back in there and raise our flag."
          - switch <npc.location.find.blocks[lever].within[5].get[1]> state:on duration:3s
          - flag flagRaiser
          - flag mineCleared:!

        - else if <player.flag[mineCleared]>:
          - chat "<&e><&l>We need you to get into that castle and kill those invaders! Once you've killed 100 come see me!"
          - switch <npc.location.find.blocks[lever].within[5].get[1]> state:on duration:3s

        - else if <player.flag[needsTnT]>:
          - chat "<&e><&l>If Halli needs TnT then bring him TnT"
          - switch <npc.location.find.blocks[lever].within[5].get[1]> state:on duration:3s

        - else if <player.flag[castleMineStarted]>:
          - chat "<&e><&l>Fuck we had a collapse... get in there and see what Halli needs to get back in there!"
          - switch <npc.location.find.blocks[lever].within[5].get[1]> state:on duration:3s

        - else if <player.flag[invaderDefeat]>:
          - chat "<&e><&l>That sounded like quite a battle <player.name>... You may be able to help us!"
          - narrate "<&4><&l><player.name><&co> What do I need to do?"
          - wait 3
          - chat "<&e><&l>We've dug a mine into the castle... Now all we need to do is..."
          - wait 3
          - chat "<&e><&l>What the fuck was that?!"
          - flag castleMineStarted
          - run script:MineCollapse

        - else if <player.flag[turretStarted]>:
          - chat "<&e><&l>Guard asked you for help! Why aren't you up there helping?"

        - else:
          - chat "<&e><&l>If you want to help get up there and help guard!"

TurretFinish:
  Type: Task
  Script:
    - firework random
    - give money qty:15000
    - execute as_server "addcredits <player.name> 50"
    - narrate "<&4><&l>You've earned $15,000"
    - narrate "<&4><&l>You've earned 50 McMMO Credits"
    - narrate "<&4><&l>You can now fire turrets"
    - chat "<&e><&l>We also found these in the cave when we blew it up... You can have them"
    - give iron_ingot qty:15
    - give gold_ingot qty:10
    - give diamond qty:5
