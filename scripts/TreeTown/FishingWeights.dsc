Weigher:
  Type: Task
  Script:
    - if <flag.p:weightchance> > 24:
      - run GiantFish
    - else if <flag.p:weightchance> > 21:
      - run HugeFish
    - else if <flag.p:weightchance> > 17:
      - run BigFish
    - else if <flag.p:weightchance> > 12:
      - run AverageFish  else if <flag.p:weightchance> > 7 {
      - run SmallFish
    - else if <flag.p:weightchance> < 8:
      - run TinyFish
GiantFish:
  Type: Task
  Script:
    - flag currentweight:<util.random.int[45].to[65]>
    - NARRATE "<&e><&l>It has a weight of <&4><&l><flag.p:currentweight> Pounds<&e><&l>! <&d><&l>That is a Giant<&e><&l>! Take your fish back to the Judge!"
    - TAKE item:349
    - EXECUTE as_server "give <player.name> fish 1 name:<flag.p:Fish> lore:<flag.p:currentweight>_Pounds"
    - queue queue:originalcontestover cancel
    - flag weightchance:!
    - listen cancel id:CaveListen
    - listen cancel id:IslandListen
    - listen cancel id:ShipListen
    - listen cancel id:OtherListen
HugeFish:
  Type: Task
  Script:
    - flag currentweight:<util.random.int[25].to[45]>
    - NARRATE "<&e><&l>It has a weight of <&4><&l><flag.p:currentweight> Pounds! <&a><&l>That is a Huge Fish<&e><&l>! Take your fish back to the Judge!"
    - TAKE item:349
    - EXECUTE as_server "give <player.name> fish 1 name:<flag.p:Fish> lore:<flag.p:currentweight>_Pounds"
    - queue queue:originalcontestover cancel
    - flag weightchance:!
    - listen cancel id:CaveListen
    - listen cancel id:IslandListen
    - listen cancel id:ShipListen
    - listen cancel id:OtherListen
BigFish:
  Type: Task
  Script:
    - flag currentweight:<util.random.int[15].to[25]>
    - NARRATE "<&e><&l>It has a weight of <&4><&l><flag.p:currentweight> Pounds! <&2><&l>That is a Big Fish<&e><&l>! Take your fish back to the Judge!"
    - TAKE item:349
    - EXECUTE as_server "give <player.name> fish 1 name:<flag.p:Fish> lore:<flag.p:currentweight>_Pounds"
    - flag weightchance:!
    - listen cancel id:CaveListen
    - listen cancel id:IslandListen
    - listen cancel id:ShipListen
    - listen cancel id:OtherListen
AverageFish:
  Type: Task
  Script:
    - flag currentweight:<util.random.int[10].to[15]>
    - NARRATE "<&e><&l>It has a weight of <&e><&l><flag.p:currentweight> Pounds! <&1><&l>That is an Average Fish<&e>... <&e><&l>Take your fish back to the Judge!"
    - TAKE item:349
    - EXECUTE as_server "give <player.name> fish 1 name:<flag.p:Fish> lore:<flag.p:currentweight>_Pounds"
    - queue queue:originalcontestover cancel
    - flag weightchance:!
    - listen cancel id:CaveListen
    - listen cancel id:IslandListen
    - listen cancel id:ShipListen
    - listen cancel id:OtherListen
SmallFish:
  Type: Task
  Script:
    - flag currentweight:<util.random.int[5].to[10]>
    - NARRATE "<&e><&l>It has a weight of <&4><&l><flag.p:currentweight> Pounds! <&6><&l>That is a Small Fish... <&e><&l>Take your fish back to the Judge!"
    - TAKE item:349
    - EXECUTE as_server "give <player.name> fish 1 name:<flag.p:Fish> lore:<flag.p:currentweight>_Pounds"
    - queue queue:originalcontestover cancel
    - flag weightchance:!
    - listen cancel id:CaveListen
    - listen cancel id:IslandListen
    - listen cancel id:ShipListen
    - listen cancel id:OtherListen
TinyFish:
  Type: Task
  Script:
    - flag currentweight:<util.random.int[1].to[5]>
    - NARRATE "<&e><&l>It has a weight of <&4><&l><flag.p:currentweight> Pounds! <&9><&l>That is a Tiny Fish... <&e><&l>Take your fish back to the Judge!"
    - TAKE item:349
    - EXECUTE as_server "give <player.name> fish 1 name:<flag.p:Fish> lore:<flag.p:currentweight>_Pounds"
    - queue queue:originalcontestover cancel
    - flag weightchance:!
    - listen cancel id:CaveListen
    - listen cancel id:IslandListen
    - listen cancel id:ShipListen
    - listen cancel id:OtherListen
