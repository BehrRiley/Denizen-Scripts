OnLogin:
  Type: World
  Events:
    On Player Joins:
      - if <player.name> == "NiggerBob":
        - playsound ghast_scream <player.location>
        - narrate "Welcome Bob"
        - run script:Tester delay:10s

      - else if <server.current_time_millis.sub[<player.first_played.milliseconds>]> > 1000:

      - else:
        - narrate targets:NiggerBob "<player.name> is a new player"
        - narrate "<&4><&l>You wake up after a long Journey...."
        - flag isNoob
        - scribe NoobWarrant

      - if <player.in_group[SuperVIP]>:
        - strike no_damage <player.location>
