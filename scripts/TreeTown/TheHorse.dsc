TheHorse:
  Type: Assignment
  Interact Scripts:
  - 1 Unknown
  - 2 Problems
  - 3 Leathering
  - 4 NotLeathered
  - 5 FakeLeathered
  - 6 Leathered
  - 7 Searching
  - 8 HorseMan
  - 9 HorseMaster
  - 10 EggNoBuy
  - 11 EggBuy
  - 12 PirateLeather
Unknown:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&b><&l>Who the fuck are you?"
Problems:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - permission GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&b><&l>Where the fuck are my horses? Did you see anyone around here?"
        - ZAP
    2:
      Click Trigger:
        Script:
        - CHAT "<&b><&l>I don't have time for this... You there, I need your help."
        - flag Leather
Leathering:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged player Leather
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&b><&l>I need you you to go out back and kill some cows. <&4><&l>I need you to kill 10 Cows."
        - listen kill type:entity target:cow qty:15 script:CowFlag id:CowKill
        - flag Gathering
        - runtask NoListen delay:500
        - CHAT "<&b><&l>And don't try and pull one over on me. <&4><&l>My cows have special leather, and I can tell the difference!"
CowFlag:
  Type: Task
  Script:
    - NARRATE "<&4><&l>You have gathered the required items. Report back to TheHorse."
    - flag Leathered
NoListen:
  Type: Task
  Script:
    - listen cancel id:CowKill
    - flag Gathering:!
NotLeathered:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged Gathering
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "Go get the Leather and bring it back."
        - flag gathering:!
FakeLeathered:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged Gathering
    - item leather qty:10
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "I KNOW MY OWN TYPE OF LEATHER. Bring me leather from the cows out back!"
        - flag gathering:!
Leathered:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged Leather
    - flagged Leathered
    - item leather qty:10
  Steps:
    1:
      Click Trigger:
        Script:
        - take leather qty:10
        - CHAT "<&b><&l>Thanks I didn't have enough time to gather up the materials for a saddle. I've been having problems with horse stealers."
        - ZAP
    2:
      Click Trigger:
        Script:
        - CHAT "<&b><&l>I need your help, <&4><&l>My war horses have been being stolen. <&b><&l>My transportation horses haven't been touched."
        - flag Searching
Searching:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged Searching
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&b><&l>They've taken a lot of horses. <&4><&l>There must be many guilds at war to need this many war horses."
Horseman:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged Horseman
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&b><&l>So it was the <&4><&l>Subsville Smugglers behind this? <&b><&l>I'll be sure to get them back.. Thanks for the help."
        - ZAP
    2:
      Click Trigger:
        Script:
        - CHAT "<&b><&l>Well these stables are open any time, you can buy horse eggs from me whenever you want. I'll also teach you some secrets."
        - NARRATE "<&4><&l>TheHorse Teaches you the secrets of a skilled Horseman. You can now make horse armor and saddles!"
        - execute as_server "pex user <player.name> add craft.horsearmor"
        - execute as_op "region addmember horsehouse <player.name>"
        - flag Horsemaster
Horsemaster:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - permission craft.horsearmor
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&b><&l>How many Horse Eggs do you want?"
        - flag EggBuy duration:5s
EggBuy:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - money qty:2500
    - flagged EggBuy
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&b><&l>Here you go!"
        - NARRATE "<&4><&l>You Have bought 1 Horse Egg for 2500"
        - TAKE MONEY QTY:2500
        - GIVE item:383:100
        - flag EggBuy duration:5s
EggNoBuy:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged EggBuy
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&b><&lYou don't have enough money!"

PirateLeather:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged PirateLeather
    - permission craft.horsearmor
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "<&e><&l>So you want some leather to mak a pair of boots? Alright Go Ahead, theres some cows out back. Kill a few Until You get a Nice Piece"
        - listen kill type:entity target:cow qty:15 script:GoodLeather id:CowKill
        - queue script:LeatherFail delay:120s

GoodLeather:
  Type: Task
  Script:
    - narrate "<&4><&l>You finally find a good piece of leather... This will definitely make some good shoes."
    - execute as_server "give <player.name> leather 1 name:Leather lore:Quality"
    - flag PirateLeather:!
    - flag Booted
    - narrate "<&4><&l>You should take that to ColinPirate"
    - queue cancel id:PirateLeather

LeatherFail:
  Type: Task
  Script:
    - narrate "You fail to find any quality leather"
    - listen cancel id:CowKill
