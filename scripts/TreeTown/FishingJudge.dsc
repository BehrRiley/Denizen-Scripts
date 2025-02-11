FishJudge:
  Type: Assignment
  Interact Scripts:
  - 0 Unknown
  - 1 ContestStart
  - 2 Fishing
  - 3 LynchContestEnd
  - 4 DrowningContestEnd
  - 5 CreepyContestEnd
  - 6 PenisContestEnd
  - 7 DeadContestEnd
  - 8 Debugger
Uknown:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&e><&l>Sorry player we'ere closed until all the strange things around here are solved."
Debugger:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - holding bedrock
  Steps:
    1:
      Click Trigger:
        Script:
        - flag fishing:!
        - flag global lynchrecordweight:1
        - flag global penisrecordweight:1
        - flag global Drowningrecordweight:1
        - flag global Deadrecordweight:1
        - flag global Creepyrecordweight:1
        - CHAT "<&e><&l>I worked"
        - flag currentweight:!
        - flag Fish:!
        - flag WeightChance:!
        - listen cancel id:ContestStart
        - listen cancel id:CaveListen
        - listen cancel id:IslandListen
        - listen cancel id:ShipListen
        - listen cancel id:OtherListen
ContestStart:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY qty:100
    - permission craft.horsearmor
  Steps:
    1:
      Click Trigger:
        Script:
        - ^flag fishing
        - CHAT "<&e><&l>Welcome to the <&6><&l>fishing contest! <&e><&l>Ill just take your $100 Entry Fee."
        - NARRATE "<&4><&l>The judge takes your entry fee of $100"
        - take money qty:100
        - listen item type:fish qty:1 region:FisingCave "Script:CaveListen"
        - listen item type:fish qty:1 region:Island "Script:IslandListen"
        - listen item type:fish qty:1 region:Shipwreck "Script:ShipListen"
        - listen item type:fish qty:1 "Script:OtherListen"
        - run contestover delay:120s id:originalcontestover
        - chat "<&e><&l>You Have <&4><&l>2 minutes <&e><&l>to Catch a Fish!"
        - if <player.inventory.qty[346]> < 1:
          - chat "<&e><&l>I see you don't have a fishing rod. You'll need this"
          - give item:346
        - else:
CaveListen:
  Type: Task
  Script:
    - flag Cave:1
    - flag Ship:0
    - flag Island:0
ShipListen:
  Type: Task
  Script:
    - flag Cave:0
    - flag Ship:1
    - flag Island:0
IslandListen:
  Type: Task
  Script:
    - flag Cave:0
    - flag Ship:0
    - flag Island:1
OtherListen:
  Type: Task
  Script:
    - flag Cave:0
    - flag Ship:0
    - flag Island:0
    - run FishFinder delay:10s
FishFinder:
  Type: task
  Script:
    - if <flag.p:Cave> > 0:
      - run cave_fish_catch
    - else if <flag.p:Ship> > 0:
      - run Shipwreck_Fish_Catch
    - else if <flag.p:Island> > 0:
      - run Island_Fish_Catch
    - else:
      - run Other_Fish_Catch
Fishing:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged fishing
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&e><&l>You <&4><&l>should be fishing <&e><&l><player.name>!"
ContestOver:
  Type: Task
  Script:
    - flag fishing:!
    - listen cancel id:item
    - NARRATE "<&5><&l>The Contest Is Over! Bring All Fish to the Judge!"
    - listen cancel id:CaveListen
    - listen cancel id:IslandListen
    - listen cancel id:ShipListen
    - listen cancel id:OtherListen
LynchContestEnd:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged Fish:LynchFish
  Steps:
    1:
      Click Trigger:
        Script:
        - flag fishing:!
        - CHAT "<&e><&l>You caught a <&b><&l>Lynching fish <&e><&l>that weighs <&4><&l><flag.p:currentweight> pounds, <&e><&l>Let's see if that's a winner."
        - run LynchWeightTest
        - listen cancel id:CaveListen
        - listen cancel id:IslandListen
        - listen cancel id:ShipListen
        - listen cancel id:OtherListen
PenisContestEnd:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged Fish:PenisEatingTrout
  Steps:
    1:
      Click Trigger:
        Script:
        - flag fishing:!
        - CHAT "<&e><&l>You caught a <&b><&l>penis eating trout <&e><&l>that weighs <&4><&l><flag.p:currentweight> pounds, <&e><&l>Let's see if that's a winner."
        - run PenisWeightTest
        - listen cancel id:CaveListen
        - listen cancel id:IslandListen
        - listen cancel id:ShipListen
        - listen cancel id:OtherListen
DrowningContestEnd:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged Fish:DrowningFish
  Steps:
    1:
      Click Trigger:
        Script:
        - flag fishing:!
        - CHAT "<&e><&l>You caught a <&b><&l>Drowning Fish <&e><&l>that weighs <&4><&l><flag.p:currentweight> pounds, <&e><&l>Let's see if that's a winner."
        - run DrowningWeightTest
        - listen cancel id:CaveListen
        - listen cancel id:IslandListen
        - listen cancel id:ShipListen
        - listen cancel id:OtherListen
CreepyContestEnd:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged Fish:CreepyAssCrackerFish
  Steps:
    1:
      Click Trigger:
        Script:
        - flag fishing:!
        - CHAT "<&e><&l>You caught a <&b><&l>CreepyAssCracker Fish <&e><&l>that weighs <&4><&l><flag.p:currentweight> pounds, <&e><&l>Let's see if that's a winner."
        - run CreepyWeightTest
        - listen cancel id:CaveListen
        - listen cancel id:IslandListen
        - listen cancel id:ShipListen
        - listen cancel id:OtherListen
DeadContestEnd:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged Fish:DeadFish
  Steps:
    1:
      Click Trigger:
        Script:
        - flag fishing:!
        - CHAT "<&e><&l>You caught a <&b><&l>Dead Fish that weighs <&4><&l><flag.p:currentweight> pounds, <&e><&l>Let's see if that's a winner."
        - run DeadWeightTest
        - listen cancel id:CaveListen
        - listen cancel id:IslandListen
        - listen cancel id:ShipListen
        - listen cancel id:OtherListen
LynchWeightTest:
  Type: Task
  Script:
    - if <flag.p:currentweight> > <flag.g:lynchrecordweight>:
      - CHAT "<&e><&l>This fish is a record setting <&4><&l><flag.p:currentweight> pounds!"
      - flag global lynchrecordholder:<player.name>
      - flag global lynchrecordweight:<flag.p:currentweight>
      - sign type:wall_sign "|<&e><&l><player.name>|<&4><&l><flag.p:currentweight> pounds|" location:5133,60,-9954,world
      - flag fish:!
      - flag currentweight:!
      - NARRATE "<&e><&l>You feel as if your skills in fishing have increased"
      - EXECUTE as_server "addlevels <player.name> fishing 30" 
      else {
      - CHAT "Sorry <player.name> this fish is not a winner."
      - NARRATE "<&e><&l>The Current Record Holder is <&4><&l><flag.g:lynchrecordholder> <&e><&l>with a weight of <&4><&l><flag.g:lynchrecordweight>"
      - flag fish:!
      - flag currentweight:!
PenisWeightTest:
  Type: Task
  Script:
    - if <flag.p:currentweight> > <flag.g:penisrecordweight>:
      - CHAT "<&e><&l>This fish is a record setting <&4><&l><flag.p:currentweight> pounds!"
      - flag global penisrecordholder:<player.name>
      - flag global penisrecordweight:<flag.p:currentweight>
      - sign type:wall_sign "|<&e><&l><player.name>|<&4><&l><flag.p:currentweight> pounds|" location:5132,60,-9954,world
      - flag fish:!
      - flag currentweight:!
      - NARRATE "<&e><&l>You feel as if your skills in fishing have increased"
      - EXECUTE as_server "addlevels <player.name> fishing 25" 
      else {
      - CHAT "Sorry <player.name> this fish is not a winner."
      - NARRATE "<&e><&l>The Current Record Holder is <&4><&l><flag.g:penisrecordholder> <&e><&l>with a weight of <&4><&l><flag.g:penisrecordweight>"
      - flag fish:!
      - flag currentweight:!
DrowningWeightTest:
  Type: Task
  Script:
    - if <flag.p:currentweight> > <flag.g:drowningrecordweight>:
      - CHAT "<&e><&l>This fish is a record setting <&4><&l><flag.p:currentweight> pounds!"
      - flag global drowningrecordholder:<player.name>
      - flag global drowningrecordweight:<flag.p:currentweight>
      - sign type:wall_sign "|<&e><&l><player.name>|<&4><&l><flag.p:currentweight> pounds|" location:5131,60,-9954,world
      - flag fish:!
      - flag currentweight:!
      - NARRATE "<&e><&l>You feel as if your skills in fishing have increased"
      - EXECUTE as_server "addlevels <player.name> fishing 15" 
      else {
      - CHAT "Sorry <player.name> this fish is not a winner."
      - NARRATE "<&e><&l>The Current Record Holder is <&4><&l><flag.g:drowningrecordholder> <&e><&l>with a weight of <&4><&l><flag.g:drowningrecordweight>"
      - flag fish:!
      - flag currentweight:!
CreepyWeightTest:
  Type: Task
  Script:
    - if <flag.p:currentweight> > <flag.g:creepyrecordweight>:
      - CHAT "<&e><&l>This fish is a record setting <&4><&l><flag.p:currentweight> pounds!"
      - flag global creepyrecordholder:<player.name>
      - flag global creepyrecordweight:<flag.p:currentweight>
      - sign type:wall_sign "|<&e><&l><player.name>|<&4><&l><flag.p:currentweight> pounds|" location:5130,60,-9954,world
      - flag fish:!
      - flag currentweight:!
      - NARRATE "<&e><&l>You feel as if your skills in fishing have increased"
      - EXECUTE as_server "addlevels <player.name> fishing 10" 
      else {
      - CHAT "<&e><&l>Sorry <player.name> this fish is not a winner."
      - NARRATE "<&e><&l>The Current Record Holder is <&4><&l><flag.g:creepyrecordholder> <&e><&l>with a weight of <&4><&l><flag.g:creepyrecordweight>"
      - flag fish:!
      - flag currentweight:!
DeadWeightTest:
  Type: Task
  Script:
    - if <flag.p:currentweight> > <flag.g:deadrecordweight>:
      - CHAT "<&e><&l>This fish is a record setting <&4><&l><flag.p:currentweight> pounds!"
      - flag global deadrecordholder:<player.name>
      - flag global deadrecordweight:<flag.p:currentweight>
      - sign type:wall_sign "|<&e><&l><player.name>|<&4><&l><flag.p:currentweight> pounds|" location:5129,60,-9954,world
      - flag fish:!
      - flag currentweight:!
      - NARRATE "<&e><&l>You feel as if your skills in fishing have increased"
      - EXECUTE as_server "addlevels <player.name> fishing 5" 
      else {
      - CHAT "<&e><&l>Sorry <player.name> this fish is not a winner."
      - NARRATE "<&e><&l>The Current Record Holder is <&4><&l><flag.g:deadrecordholder> <&e><&l>with a weight of <&4><&l><flag.g:deadrecordweight>"
      - flag fish:!
      - flag currentweight:!
