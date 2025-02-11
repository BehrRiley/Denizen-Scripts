GlassCommand:
  Type: World
  Events:
    On See Command:
      - if <player.group[Guardian]>:
        - showfake glass <player.location.cursor_on> to:<player>
        - narrate "<&e><&l>Glass Appears"
      - else:
        - narrate "<&4><&l>You don't have permission for this command"
      - determine fulfilled

ParticleCommand:
  Type: World
  Events:
    On Particle Command:
      - if <player.group[Guardian]>:
        - execute as_op "ex playeffect random <player.location> qty:100 data:5"
        - narrate "<&e><&l>It's Shiny"
      - else:
        - narrate "<&4><&l>You don't have permission for this command"
      - determine fulfilled


LightCommand:
  Type: World
  Events:
    On Light Command:
      - if <player.group[Guardian]>:
        - narrate "<&e><&l>Light appears at your feet"
        - showfake glowstone <player.location.as_location.add[0,-1,0]> to:<server.list_online_players>
      - else:
        - narrate "<&4><&l>You don't have permission for this command"
      - determine fulfilled

SuperTrollCommand:
  Type: World
  Events:
    On SuperTroll Command:
      - if <player.group[Guardian]>:
        - define <context.args.as_list.get[1]> target
        - showfake diamond_block <context.args.as_list.get[1].as_player.location.as_location.add[0,0,2]> to:<server.list_online_players>
        - showfake diamond_block <context.args.as_list.get[1].as_player.location.as_location.add[0,0,-1]> to:<server.list_online_players>
        - showfake diamond_block <context.args.as_list.get[1].as_player.location.as_location.add[5,0,0]> to:<server.list_online_players>
        - showfake diamond_block <context.args.as_list.get[1].as_player.location.as_location.add[-3,0,0]> to:<server.list_online_players>
        - narrate "<&e><&l>You have SuperTrolled <context.args.as_list.get[1]>"

      - else:
        - narrate "You don't have permission for this command"
      - determine fulfilled

StatsCommand:
  Type: World
  Events:
    On Guild Command:
      - narrate "<&4><&l>Stats"
      -  narrate "<&e><&l>Current Creeper Count<&co><&1><&l> <player.flag[creeperCount].asint||0>"
      -  narrate "<&e><&l>Current TnT Count<&co><&1><&l> <player.flag[tntCount].asint||0>"
      -  narrate "<&e><&l>Current Parachute Count<&co><&1><&l> <player.flag[parachuteCount].asint||0>"
      -  narrate "<&e><&l>Current Wool Count<&co><&1><&l> <player.flag[woolCount].asint||0>"
      -  narrate "<&e><&l>Current Block Count<&co><&1><&l> <player.flag[blockCount].asint||0>"
      -  narrate "<&e><&l>Current Obsidian Count<&co><&1><&l> <player.flag[obsidianCount].asint||0>"
      -  narrate "<&e><&l>Current Bedrock Count<&co><&1><&l> <player.flag[bedrockCount].asint||0>"
      -  narrate "<&e><&l>Current Prayer Count<&co><&1><&l> <player.flag[prayerCount].asint||0>"
      -  narrate "<&e><&l>Current Sacrifice Count<&co><&1><&l> <player.flag[sacrificeCount].asint||0>"
      -  narrate "<&e><&l>Current Altar Count<&co><&1><&l> <player.flag[altarprayerCount].asint||0>"
      -  narrate "<&e><&l>Current Spell Count<&co><&1><&l> <player.flag[spellCastCount].asint||0>"
      -  narrate "<&e><&l>Current Enchant Count<&co><&1><&l> <player.flag[enchantCount].asint||0>"
      -  narrate "<&e><&l>Current Brew Count<&co><&1><&l> <player.flag[brewCount].asint||0>"
      -  narrate "<&e><&l>Current PeePeeBandit Count<&co><&1><&l> <player.flag[banditKillCount].asint||0>"
      -  narrate "<&e><&l>Current Demonyte Count<&co><&1><&l> <player.flag[demonyteKillCount].asint||0>"
      -  narrate "<&e><&l>Current Soul Guardian Count<&co><&1><&l> <player.flag[soulKillCount].asint||0>"
      -  narrate "<&e><&l>Current Sandy Bandit Count<&co><&1><&l> <player.flag[sandyKillCount].asint||0>"
      -  narrate "<&e><&l>Current Graves Looted<&co><&1><&l> <player.flag[gravesLooted].asint||0>"
      - determine fulfilled

QuestCommand:
  Type: World
  Events:
    On Quest Command:
      - narrate "<&6><&l>Quests"

      - if <player.flag[ghostDone]>:
        - narrate "<&a><&l><&m>1. Cookies in the Moonlight"

      - else if <player.flag[ghostStart]>:
        - narrate "<&e><&l>1. Cookies in the Moonlight"

      - else:
        - narrate "<&4><&l>1. Cookies in the Moonlight"


      - if <player.flag[fishDone]>:
        - narrate "<&a><&l><&m>2. Dishing for Fick"

      - else if <player.flag[fishStarted]>:
        - narrate "<&e><&l>2. Dishing for Fick"

      - else:
        - narrate "<&4><&l>2. Dishing for Fick"


      - if <player.flag[wifeDone]>:
        - narrate "<&a><&l><&m>3. BoomBoomStoo"

      - else if <player.flag[wifeStart]>:
        - narrate "<&e><&l>3. BoomBoomStoo"

      - else:
        - narrate "<&4><&l>3. BoomBoomStoo"


      - if <player.flag[PreciousDone]>:
        - narrate "<&a><&l><&m>4. Precious BoomBoom"

      - else if <player.flag[PreciousStart]>:
        - narrate "<&e><&l>4. Precious BoomBoom"

      - else:
        - narrate "<&4><&l>4. Precious BoomBoom"


      - if <player.flag[coxDuring]> OR <player.flag[coxDone]> :
        - narrate "<&a><&l><&m>5. Holocowst"

      - else if <player.flag[coxDuring]> && <player.flag[prayerDuring]> && <player.flag[farmerDuring]> && <player.flag[hayDuring]>:
        - narrate "<&e><&l>5. Holocowst"

      - else:
        - narrate "<&4><&l>5. Holocowst"


      - if <player.flag[coxDone]> :
        - narrate "<&a><&l><&m>6. Cowpital Herder"

      - else if <player.flag[coxDuring]>:
        - narrate "<&e><&l>6. Cowpital Herder"

      - else:
        - narrate "<&4><&l>6. Cowpital Herder"


      - if <player.flag[cakeDone]> :
        - narrate "<&a><&l><&m>7. Bake a Pretty Cake"

      - else if <player.flag[cakeDuring]>:
        - narrate "<&e><&l>7. Bake a Pretty Cake"

      - else:
        - narrate "<&4><&l>7. Bake a Pretty Cake"


      - if <player.flag[turretDone]> :
        - narrate "<&a><&l><&m>8. Sandy Castle"

      - else if <player.flag[turretStarted]>:
        - narrate "<&e><&l>8. Sandy Castle"

      - else:
        - narrate "<&4><&l>8. Sandy Castle"



      - if <player.flag[hellDone]> :
        - narrate "<&a><&l><&m>9. Hell's Bells"

      - else if <player.flag[hellDuring]>:
        - narrate "<&e><&l>9. Hell's Bells"

      - else:
        - narrate "<&4><&l>9. Hell's Bells"

      - determine fulfilled
