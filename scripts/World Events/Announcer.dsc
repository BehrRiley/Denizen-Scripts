Announcer:
  Type: World
  Events:
    On Announce Command:
      - if <player.name> == "niggerbob":
        - if <server.flag[announceRunning]>:
          - narrate "Announcer Stopped"
          - flag global announceRunning:!
        - else:
          - narrate "Announcer Started"
          - flag global announceRunning
          - run script:Announce
      - else:
        - narrate "You don"t have permission to do that."
      - determine fulfilled

Announce:
  Type: Task
  Script:
    - if <server.flag[announceRunning]>:
      - run script:Announce delay:5m
      - random:
        - announce "<&l>Check out our amazing Donation Packages @ WWW.MeanCraft.Org!"
        - announce "<&b><&l>Tired of being a <&4><&l>Dumb Noob? <&e><&l>Want <&1><&l>Weapons, <&5><&l>GodArmor <&b><&l>or <&1><&l>ranks? <&b><&l>Go to <&e><&l>WWW.MeanCraft.Org <&1><&l> to find out how!"
        - announce "<&2><&l>Quit being a noob and do our awesome <&2><&l>Quests! <&2><&l>Remember to check out <&2><&l>/Quest"
        - announce "<&2><&l>Join the Server Teamspeak @ ts.meancraft.org! <&4><&l>Better Than Skype You Noobs"
        - announce "<&2><&l>Check out Our <&4><&l>MeanCraft Mob Arena <&f><&l>Type /ma join <&2><&l>to play!"
        - announce "<&5><&l>Remember to check out the <&4><&l>Airship Tutorial <&5><&l>if you don't know how to use airships!"
        - announce "<&d><&l>All Donations now 25% off for our <&e><&l>MeanCraft Valentine's Day Sale"
