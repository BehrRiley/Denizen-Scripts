Slasher:
  Type: Assignment
  Interact Scripts:
  Actions:
    On Assignment:
      - flag npc guardSpot:<npc.location>
      - narrate targets:NiggerBob "Assigned"
      - trigger name:proximity toggle:true radius:18

    On Spawn:
      - vulnerable state:true
      - health state:true
      - health 1000 <npc>
      - heal <npc>
      - run script:slasherAttack

    On Enter Proximity:
      - if !<npc.flag[Attacking]>:
        - vulnerable state:True
        - health 1000 <npc>
        - heal <npc>
        - narrate "Soul Guardian has Spotted you"
        - run script:slasherAttack
        - flag npc Attacking

    On Death:
      - narrate "You've killed the Soul Guardian"
      - run script:SlasherDropScript
      - determine no_drops
      - flag GuardianKillCount:++

slasherAttack:
  Type: Task
  Script:
    - if <npc.location.find.players.within[20].size> > 0:
      - cast FIRE_RESISTANCE duration:10s <npc>
      - attack <npc> target:<npc.location.find.players.within[20].get[1]>
      - run script:SlasherAttack delay:10s

      - random:
        - foreach <npc.location.find.players.within[20].aslist>:
          - push wither_skull destination:<<[value]>.location>
          - narrate "<[value]> wither"
      
        - foreach <npc.location.find.players.within[20].aslist>:
          - push small_fireball destination:<<[value]>.location>
          - narrate "<[value]> small ball"

        - foreach <npc.location.find.players.within[20].aslist>:
          - push fireball destination:<<[value]>.location>
          - narrate "<[value]> fire ball"

        - run script:GuardianJump delay:3s
        - execute as_npc "replacenear 1 air fire"
      

    - else:
      - attack cancel
      - flag npc Attacking:!
      - teleport npc location:<npc.flag[guardSpot]>
      - narrate "Slasher loses interest"
      - vulnerable state:false

GuardianJump:
  Type: Task
  Script:
    - push <npc> origin:<npc.locaiton> destination:<npc.location.add[0,10,0]> speed:.5 duration:1s
    - wait duration:2s
    - foreach <npc.location.find.players.within[20].aslist>:
      - push <[value]> origin:<<[value]>.location> destination:<player.location.add[0,25,0]> speed:.7 duration:5s
      - narrate "<[value]> Jump"

SlasherDropScript:
  Type: Task
  Script:
    - define headChance <util.random.int[<1>].to[<50>]>
    - narrate targets:NiggerBob "Hes dead <[headChance]>"
    - if <[headChance]> == 50:
      - narrate "You've beheaded Soul Guardian"
      - drop human_skull[skull_skin=Soul_Guardian]

    - else if <[headChance]> < 30:
      - give book[display_name=PrayerBook;lore=Heal] qty:3

    - else if <[headChance]> < 25:
      - give book[display_name=PrayerBook;lore=Speed] qty:3

    - else if <[headChance]> < 20:
      - give book[display_name=PrayerBook;lore=Dispel] qty:3

    - else if <[headChance]> < 15:
      - drop diamond qty:3

    - else if <[headChance]> < 10:
      - drop exp qty:20 <npc.location>
    