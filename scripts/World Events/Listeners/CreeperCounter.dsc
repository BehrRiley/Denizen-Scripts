CreeperCounter:
  Type: World
  Events:
    On creeper spawns:
      - if <context.reason>  == "SPAWNER_EGG":
        - define eggUser <context.entity.location.find.entities[player].within[5].get[1]> duration:5s
        - flag <[eggUser]> creeperCount:++

GhastCounter:
  Type: World
  Events:
    On Ghast spawns:
      - if <context.reason>  == "GHST_EGG":
        - define eggUser <context.entity.location.find.entities[player].within[5].get[1]> duration:5s
        - flag <[eggUser]> ghastCount:++
