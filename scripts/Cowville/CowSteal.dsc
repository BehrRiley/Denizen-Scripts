CowStealCheck:
  Type: World
  Events:
    On Player Leashes entity:
      - if <context.entity.location.regions.contains[cowPen]> && <context.entity.entity_type> == "MUSHROOM_COW":
        - narrate "<&4><&l>No Please... I have a family!"
        - flag stolenCow:<context.entity>

      - else if <context.entity.location.regions.contains[cowDeck]>:

        - if <context.entity> == <player.flag[stolenCow]>:
          - narrate "<&4><&l>You tie the cow up as ChairmanCao suggested.... You can hear Chairman Cao coming from his cabin"
          - run script:CaoExecution def:<player>|<context.entity>
        - else:
          - narrate "Random entity"		  

ShaveKiller:
  Type: World
  Events:
    On Player shears MUSHROOM_COW:
      - if <context.entity.location.regions.contains[cowPen]>:
        - hurt <player> 50
        - narrate "<&e><&l>Just as you raise your shears the guard busts into the room and kills you on the spot.... That's what you get for being a faggot."
        - determine cancelled

      - else if <context.entity.location.regions.contains[cowville]>:
        - narrate "The Mooshroom throws you into the air"
        - push <player> origin:<player.location> destination:<player.location.add[0,50,0]> speed:.7
        - determine cancelled

CaoExecution:
  Type: Task
  Script:
    - walk <player.flag[onDeck]> auto_range
    - wait 20
    - teleport <npc> <npc.flag[onDeck]>
    - narrate "<&4><&l>ChairmanCao<&co>Well well well.... A dirty Mushroom Cow on my deck"
    - narrate "<&e><&l>HostageMooshroom<&co>Please don't kill me!"
    - narrate "<&4><&l>ChairmanCao<&co>SILENCE"
    - narrate "<&e><&l>HostageMooshroom<&co>See this Cowville? This is what will happen to the rest of you!"
    - hurt 10 <[2]>
    - narrate "<&b><&l>Flashcannon<&co> Damn you ChairmanCao!!!!"
    - run script:TownFire
    - run script:TownFire delay:3s
    - playsound horse_zombie_death <player>
    - chat "<&e><&l>That'll teach them to fuck with me... Fire the cannons"
    - run script:ShipFire
    - run script:ShipFire delay:3s
    - walk location <npc.flag[caoSpot]> auto_range
    - wait 10
    - flag caoDone
    - flag stolenCow:!
    - flag caoQuest:!
    - teleport <npc[100]> <npc[100].flag[caoSpot]>

TownFire:
  Type: Task
  Script:
    - foreach <server.flag[TownCannons].as_list>:
      - push primed_tnt origin:<<[value]>.as_location.add[0,0,-4]> destination:<server.flag[cowCannons].random.as_location.add[0,10,0]> speed:.9

ShipFire:
  Type: Task
  Script:
    - foreach <server.flag[CowCannons].as_list>:
      - push primed_tnt origin:<<[value]>.as_location.add[0,0,4]> destination:<server.flag[TownCannons].random.as_location.add[0,5,0]> speed:1

WallCollapse:
  Type: World
  Events:
    On Player Breaks cracked_stone_brick:
      - if <player.location.regions.contains[breakWall]> && <server.flag[wallDown]> == null:

        - if <player.flag[caoQuest]>:
          - narrate "The loose bricks crumble away"
          - execute as_op "/schem load brokeWall"
          - execute as_op "/paste -o"
          - flag global wallDown
          - run script:WallReplace delay:5s

        - else if <player.location.regions.contains[cowPen]>:
          - hurt <player> 50
          - narrate "<&e><&l>Just as you raise your shears the guard busts into the room and kills you on the spot.... That's what you get for being a faggot."
          - determine cancelled

        - else:
          - narrate "You dont see a reason to go tearing down walls like that." determine cancelled
        }

WallReplace:
  Type: Task
  Script:
    - execute as_op "/undo"
    - narrate "You replace them before anyone notices"
    - flag global wallDown:!
