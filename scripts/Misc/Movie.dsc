Theatre:
  Type: Assignment
  Interact Scripts:
  - Film1
Film1:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - engage duration:10
        - CHAT "Running Film One... Enjoy!"
        - run StartOne
StartOne:
  Type: Task
  Script:
    - execute as_server "citizens reload"
    - execute as_npc "/schem load scene1"
    - execute as_npc "/paste -o"
    - execute as_npc "/replacenear 15 water grass"
    - execute as_npc "/schem load screen"
    - execute as_npc "/paste -o"
    - run SteveOne
SteveOne:
  Type: Task
  Script:
    - teleport npc location:12474,70,7597,world
    - wait 3
    - walk location:12481,70,7595,world
    - wait 3
    - look location:12481,70,7599,world
    - wait 3
    - look location:12481,70,7591,world
    - wait 3
    - CHAT "I wonder where I should live, being a noob and all I have no house."
    - wait 3
    - run PartnerOne
PartnerOne:
  Type: Task
  Script:
    - teleport npc location:12474,70,7597,world
    - walk location:12483,70,7592,world
    - look location:12481,70,7599,world
    - look location:12481,70,7591,world
    - CHAT "Hey There Noob! If you need  a place to stay I have an extra noob house nearby!"
    - run SteveTwo
SteveTwo:
  Type: Task
  Script:
    - wait 2
    - chat "Wow that sounds great! You sure are nice"
    - run PartnerTwo
    - wait 5
    - walk location:12481,70,7595,world
    - walk location:12492,70,7597,world
PartnerTwo:
  Type: Task
  Script:
    - wait 5
    - chat "I sure am! Let's go! It's getting dark!"
    - walk location:12492,70,7597,world
    - wait 10
    - run PartnerThree
    - run SteveThree
    - execute as_npc "/schem load blankscreen"
    - execute as_npc "/paste -o"
    - execute as_npc "/schem load scene2"
    - execute as_npc "/paste -o"
    - teleport npc location:12474,70,7597,world
    - execute as_npc "/schem load screen"
    - execute as_npc "/paste -o"
SteveThree:
  Type: Task
  Script:
    - teleport npc location:12476,70,7595,world
PartnerThree:
  Type: Task
  Script:
    - walk location:12481,70,7595,world
    - chat "Well! This is it."
    - look location:steve
    - chat "Let's get inside before any mobs show up."
    - run SteveFour
    - walk location:12487,70,7595,world
    - wait 9
    - switch location:12488,70,7595,world
    - walk location:12491,70,7595,world
SteveFour:
  Type: Task
  Script:
    - chat "Good idea.... This looks like a nice place."
    - wait 6
    - walk location:12491,70,7595,world
    - wait 5
    - switch location:12488,70,7595,world
    - wait 3
    - execute as_npc "/schem load blankscreen"
    - execute as_npc "/paste -o"
    - teleport npc location:12487,70,7595,world
    - run partnerfour
    - execute as_npc "/schem load scene3"
    - execute as_npc "/paste -o"
    - execute as_npc "/schem load screen"
    - execute as_npc "/paste -o"
PartnerFour:
  Type: Task
  Script:
    - teleport npc location:12485,70,7595,world
    - wait 5
    - chat "Well here it is. Feel free to help yourself to anything."
    - walk location:12479,70,7596,world
    - wait 3
    - switch location:12478,70,7596,world
    - chat "Good Luck!"
    - walk location:12474,70,7596,world
    - wait 2
    - switch location:12478,70,7596,world
    - walk location:12474,70,7596,world
    - run stevefive
RapistOne:
  Type: Task
  Script:
    - teleport npc location:12492,70,7597,world
    - execute as_server "npc select 180"
    - execute as_server "npc sneak"
    - walk location:12485,70,7591,world
    - wait 10
    - walk location:12474,70,7597,world
SteveFive:
  Type: Task
  Script:
    - wait 5
    - run rapistone
    - chat "Well... I think I better get ready for bed."
    - wait 3
    - look location:12481,70,7599,world
    - wait 3
    - chat "This sure is a nice place..."
    - wait 3
    - look location:12481,70,7591,world
    - wait 3
    - look location:12486,70,7591,world
    - wait 1
    - chat "What was that...."
    - wait 3
    - walk location:12485,70,7594,world
    - wait 3
    - look location:12492,70,7597,world
    - wait 3
    - look location:12474,70,7597,world
    - wait 3
    - chat "I guess I'm just seeing things... I better get in bed"
    - wait 3
    - walk location:12487,70,7593,world
    - wait 3
    - animate entities:<npc> animation:sleep
    - wait 3
    - execute as_npc "/schem load blankscreen"
    - teleport npc location:12492,70,7597,world
    - wait 5
    - execute as_npc "/paste -o"
    - animate entities:<npc> animation:stop_sleeping
    - execute as_npc "/schem load scene2"
    - execute as_npc "/paste -o"
    - execute as_npc "/schem load screen"
    - execute as_npc "/paste -o"
    - run partnerfive
PartnerFive:
  Type: Task
  Script:
    - teleport npc location:12487,70,7595,world
    - run rapisttwo
    - chat "Well... I better get back to my place"
    - walk location:12481,70,7595,world
    - look location:12481,70,7599,world
    - look location:12481,70,7591,world
    - walk location:12474,70,7597,world
RapistTwo:
  Type: Task
  Script:
    - teleport npc location:12492,70,7597,world
    - wait 10
    - walk location:12474,70,7597,world
    - execute as_npc "/schem load blankscreen"
    - execute as_npc "/paste -o"
    - teleport npc location:12492,70,7597,world
    - wait 2
    - execute as_npc "/schem load scene1dark"
    - execute as_npc "/paste -o"
    - execute as_npc "/replacenear 15 water grass"
    - execute as_npc "/schem load screen"
    - execute as_npc "/paste -o"
    - run PartnerSix
    - run RapistThree
PartnerSix:
  Type: Task
  Script:
    - teleport npc location:12492,70,7597,world
    - wait 1
    - walk location:12481,70,7595,world
    - look location:12481,70,7599,world
    - look location:12481,70,7591,world
    - walk location:12474,70,7597,world
RapistThree:
  Type: Task
  Script:
    - wait 5
    - walk location:12481,70,7595,world
    - look location:12481,70,7599,world
    - look location:12481,70,7591,world
    - walk location:12474,70,7597,world
    - wait 3
    - playsound location:<player.location> sound:ghast_scream volume:6
    - playsound location:<player.location> sound:slime_walk volume:6
    - playsound location:<player.location> sound:ghast_scream2 volume:5
    - playsound location:<player.location> sound:ghast_scream2 volume:5
    - playsound location:<player.location> sound:ghast_scream2 volume:5
    - playsound location:<player.location> sound:slime_walk volume:6
    - playsound location:<player.location> sound:ghast_scream2 volume:5
    - playsound location:<player.location> sound:slime_walk volume:5
    - playsound location:<player.location> sound:ghast_scream volume:6
    - playsound location:<player.location> sound:slime_walk volume:6
    - playsound location:<player.location> sound:ghast_scream2 volume:5
    - playsound location:<player.location> sound:ghast_scream2 volume:5
    - playsound location:<player.location> sound:ghast_scream2 volume:5
    - playsound location:<player.location> sound:slime_walk volume:6
    - playsound location:<player.location> sound:ghast_scream2 volume:5
    - playsound location:<player.location> sound:slime_walk volume:5
    - wait 1
    - execute as_npc "/schem load blankscreen"
    - execute as_npc "/paste -o"
    - run SteveSix
SteveSix:
  Type: Task
  Script:
    - execute as_npc "/schem load scene3"
    - execute as_npc "/paste -o"
    - teleport npc location:12487,70,7593,world
    - animate entities:<npc> animation:sleep
    - execute as_npc "/schem load screen"
    - execute as_npc "/paste -o"
    - run RapistFour
RapistFour:
  Type: Task
  Script:
    - teleport npc location:12480,70,7596,world
    - switch location:12478,70,7596,world
    - walk location:12476,70,7596,world
    - switch location:12478,70,7596,world
    - walk location:12475,70,7596,world
    - walk location:12486,70,7594,world
    - wait 10
    - execute as_npc "/schem load blankscreen"
    - execute as_npc "/paste -o"
    - playsound location:<player.location> sound:ghast_scream volume:6
    - playsound location:<player.location> sound:slime_walk volume:6
    - playsound location:<player.location> sound:ghast_scream2 volume:5
    - playsound location:<player.location> sound:ghast_scream2 volume:5
    - playsound location:<player.location> sound:ghast_scream2 volume:5
    - playsound location:<player.location> sound:slime_walk volume:6
    - playsound location:<player.location> sound:ghast_scream2 volume:5
    - playsound location:<player.location> sound:slime_walk volume:5
