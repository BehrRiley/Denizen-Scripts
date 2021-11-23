Jailer:
  Type: Assignment
  Interact Scripts:
  - 1 JailGuard
  Actions:
    On Assignment:
      - trigger name:proximity toggle:true radius:3
    On Enter Proximity:
      - if <player.flag[isNoob]>:
        - flag isNoob:!
        - chat "Welcome to Noob Island!"
        - run script:NoobItems instantly

      - else:
        - chat "<&2><&l>I remember you <player.name>! You were released on <&1><&l><player.first_played.time>"

JailGuard:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "Hello there"

NoobItems:
  Type: Task
  Script:
    - narrate "Hmmm... <&1><&l><player.first_played.time>, It looks like it's time for your release! <&5><&l>Here is your property <player.name>. You're free to go. Now get up on deck and get going!"
    - execute as_server "give <player.name> book 1 name:PrayerBook lore:Wilderness"
    - execute as_op "i ironplatebody 1 name:Noob_PlateBody_of lore:<player.name> protection:1"
    - execute as_op "i ironlegs 1 name:Noob_PlateLegs_of lore:<player.name> protection:1"
    - execute as_op "i ironhelmet 1 name:Noob_Helmet_of lore:<player.name> protection:1"
    - execute as_op "i ironboots 1 name:Noob_Boots_of lore:<player.name> protection:1"
    - execute as_op "i ironsword 1 name:Noob_Sword_of lore:<player.name> sharpness:1"
    - give item:boat
    - give item:coal qty:32
    - give item:bread qty:16
    - give item:cobblestone qty:32
    - give item:wood qty:10
    - give item:torch qty:10
