Cave_Fish_Catch:
  Type: Task
  Script:
    - run contestover delay:10s
    - flag Cave_Fish_Catch:<util.random.int[1].to[20]>
    - if <flag.p:Cave_Fish_Catch> > 19:
      - run Cave_Lynch_Fish
    - else if <flag.p:Cave_Fish_Catch> > 17:
      - run Cave_Penis_Fish
    - else if <flag.p:Cave_Fish_Catch> > 14:
      - run Cave_Drowning_Fish
    - else if <flag.p:Cave_Fish_Catch> > 10:
      - run Cave_Creepy_Fish
    - else:
      - run Cave_Dead_Fish
Cave_Lynch_Fish:
  Type: Task
  Script:
    - flag weightchance:<util.random.int[8].to[25]>
    - NARRATE "You Caught A Lynching Fish!"
    - flag Fish:LynchFish
    - run Weigher
Cave_Penis_Fish:
  Type: Task
  Script:
    - flag weightchance:<util.random.int[1].to[18]>
    - NARRATE "You Caught A PenisEatingTrout!"
    - flag Fish:penisEatingTrout
    - run Weigher
Cave_Drowning_Fish:
  Type: Task
  Script:
    - flag weightchance:<util.random.int[1].to[16]>
    - NARRATE "You Caught A Drowning Fish!"
    - flag Fish:DrowningFish
    - run Weigher
Cave_Creepy_Fish:
  Type: Task
  Script:
    - flag weightchance:<util.random.int[1].to[20]>
    - NARRATE "You caught a CreepyAssCracker Fish. That's not a racial term."
    - flag Fish:CreepyAssCrackerFish
    - run Weigher
Cave_Dead_Fish:
  Type: Task
  Script:
    - flag weightchance:<util.random.int[1].to[25]>
    - NARRATE "You Caught A Dead fish.... That's fuckin' gay."
    - flag Fish:DeadFish
    - run Weigher
#______________________________________________________________________________________________________________________________________
Shipwreck_Fish_Catch:
  Type: Task
  Script:
    - run contestover delay:10s
    - flag Shipwreck_Fish_Catch:<util.random.int[1].to[50]>
    - if <flag.p:Shipwreck_Fish_Catch> > 47:
      - run Shipwreck_Lynch_Fish
    - else if <flag.p:Shipwreck_Fish_Catch> > 40:
      - run Shipwreck_Penis_Fish
    - else if <flag.p:Shipwreck_Fish_Catch> > 27:
      - run Shipwreck_Drowning_Fish
    - else if <flag.p:Shipwreck_Fish_Catch> > 15:
      - run Shipwreck_Creepy_Fish
    - else:
      - run Shipwreck_Dead_Fish
Shipwreck_Lynch_Fish:
  Type: Task
  Script:
    - flag weightchance:<util.random.int[20].to[25]>
    - NARRATE "You Caught A Lynching Fish!"
    - flag Fish:LynchFish
    - run Weigher
Shipwreck_Penis_Fish:
  Type: Task
  Script:
    - flag weightchance:<util.random.int[6].to[18]>
    - NARRATE "You Caught A PenisEatingTrout!"
    - flag Fish:penisEatingTrout
    - run Weigher
Shipwreck_Drowning_Fish:
  Type: Task
  Script:
    - flag weightchance:<util.random.int[8].to[11]>
    - NARRATE "You Caught A Drowning Fish!"
    - flag Fish:DrowningFish
    - run Weigher
Shipwreck_Creepy_Fish:
  Type: Task
  Script:
    - flag weightchance:<util.random.int[8].to[21]>
    - NARRATE "You caught a CreepyAssCracker Fish. That's not a racial term."
    - flag Fish:CreepyAssCrackerFish
    - run Weigher
Shipwreck_Dead_Fish:
  Type: Task
  Script:
    - flag weightchance:<util.random.int[1].to[15]>
    - NARRATE "You Caught A Dead fish.... That's fuckin' gay."
    - flag Fish:DeadFish
    - run Weigher
#_________________________________________________________________________________________________________________________
Island_Fish_Catch:
  Type: Task
  Script:
    - run contestover delay:10s
    - flag Island_Fish_Catch:<util.random.int[1].to[20]>
    - if <flag.p:Island_Fish_Catch> > 19:
      - run Island_Lynch_Fish
    - else if <flag.p:Island_Fish_Catch> > 15:
      - run Island_Penis_Fish
    - else if <flag.p:Island_Fish_Catch> > 10:
      - run Island_Drowning_Fish
    - else if <flag.p:Island_Fish_Catch> > 3:
      - run Island_Creepy_Fish
    - else:
      - run Island_Dead_Fish
Island_Lynch_Fish:
  Type: Task
  Script:
    - flag weightchance:<util.random.int[15].to[25]>
    - NARRATE "You Caught A Lynching Fish!"
    - flag Fish:LynchFish
    - run Weigher
Island_Penis_Fish:
  Type: Task
  Script:
    - flag weightchance:<util.random.int[1].to[7]>
    - NARRATE "You Caught A PenisEatingTrout!"
    - flag Fish:PenisEatingTrout
    - run Weigher
Island_Drowning_Fish:
  Type: Task
  Script:
    - flag weightchance:<util.random.int[1].to[16]>
    - NARRATE "You Caught A Drowning Fish!"
    - flag Fish:DrowningFish
    - run Weigher
Island_Creepy_Fish:
  Type: Task
  Script:
    - flag weightchance:<util.random.int[11].to[18]>
    - NARRATE "You caught a CreepyAssCracker Fish. That's not a racial term."
    - flag Fish:CreepyAssCrackerFish
    - run Weigher
Island_Dead_Fish:
  Type: Task
  Script:
    - flag weightchance:<util.random.int[9].to[25]>
    - NARRATE "You Caught A Dead fish.... That's fuckin' gay."
    - flag Fish:DeadFish
    - run Weigher
#_________________________________________________________________________________________________________________________
Other_Fish_Catch:
  Type: Task
  Script:
    - run contestover delay:10s
    - flag Other_Fish_Catch:<util.random.int[1].to[20]>
    - if <flag.p:Other_Fish_Catch> > 18:
      - run Other_Lynch_Fish
    - else if <flag.p:Other_Fish_Catch> > 16:
      - run Other_Penis_Fish
    - else if <flag.p:Other_Fish_Catch> > 14:
      - run Other_Drowning_Fish
    - else if <flag.p:Other_Fish_Catch> > 9:
      - run Other_Creepy_Fish
    - else:
      - run Other_Dead_Fish
Other_Lynch_Fish:
  Type: Task
  Script:
    - flag weightchance:<util.random.int[1].to[17]>
    - NARRATE "<&e><&l>You Caught A <&4><&l>Lynching Fish!"
    - flag Fish:LynchFish
    - run Weigher
Other_Penis_Fish:
  Type: Task
  Script:
    - flag weightchance:<util.random.int[1].to[17]>
    - NARRATE "<&e><&l>You Caught A <&4><&l>PenisEatingTrout!"
    - flag Fish:PenisEatingTrout
    - run Weigher
Other_Drowning_Fish:
  Type: Task
  Script:
    - flag weightchance:<util.random.int[1].to[16]>
    - NARRATE "<&e><&l>You Caught A <&4><&l>Drowning Fish!"
    - flag Fish:DrowningFish
    - run Weigher
Other_Creepy_Fish:
  Type: Task
  Script:
    - flag weightchance:<util.random.int[3].to[14]>
    - NARRATE "<&e><&l>You caught a <&4><&l>CreepyAssCracker Fish. <&e><&l>That's not a racial term."
    - flag Fish:CreepyAssCrackerFish
    - run Weigher
Other_Dead_Fish:
  Type: Task
  Script:
    - flag weightchance:<util.random.int[1].to[24]>
    - NARRATE "<&e><&l>You Caught A <&4><&l>Dead fish<&e><&l>.... That's fuckin' gay."
    - flag Fish:DeadFish
    - run Weigher
