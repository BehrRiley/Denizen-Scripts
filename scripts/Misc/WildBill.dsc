Wildd:
  Type: Assignment
  Interact Scripts:
  - 13 ^Wild2
  - 12 ^Wild1
Wild1:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Proximity Trigger:
        Script:
        - CHAT "<&a>Hi there <player.name> welcome to MeanCraft! Right click me...."
Wild2:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Hi there new friend :)"
        - execute as_npc 'effect blind <player.name>'
        - playsound location:<player.location> sound:ghast_scream volume:6
        - playsound location:<player.location> sound:slime_walk volume:6
        - playsound location:<player.location> sound:ghast_scream2 volume:5
        - playsound location:<player.location> sound:ghast_scream2 volume:5
        - playsound location:<player.location> sound:ghast_scream2 volume:5
        - playsound location:<player.location> sound:slime_walk volume:6
        - playsound location:<player.location> sound:ghast_scream2 volume:5
        - playsound location:<player.location> sound:slime_walk volume:5
        - wait duration:2s
        - execute as_op 'wild <player.name>'
        - execute as_op 'top'
        - narrate "<&4> You wake up in a random location nearby in a daze with your ass hurting. You realize that you were most likely raped :(. Thank god you're still alive."
