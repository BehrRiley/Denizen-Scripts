BuildListen:
  Type: World
  Events:
    On Player Places Block:
      - if <player.location.regions.size> < 1:
        - flag BlockCount:++
        
        - if <context.location.material> == "obsidian":
          - flag ObsidianCount:++
        
        - if <context.location.material> == "bedrock":
          - flag bedrockCount:++
        
        - if <context.location.material.bukkit_enum> == "WOOL":
          - flag woolCount:++
        
        - if <context.location.material.bukkit_enum> == "REDSTONE_WIRE":
          - flag redstoneCount:++

        - else if <player.locations.regions.contains[cowville]> && <context.material> == "tnt":
          
          - if <player.flag[coxDuring]> OR <player.flag[coxDone]>:
            - foreach <server.flag[townCannons].as_list>:

              - if <context.location.distance[<[value]>]> < 1:
                - narrate "<&e><&l>You've fired the cannon <player.flag[cannonShot]> times"
                - push primed_tnt origin:<<[value]>.as_location.add[0,0,-4]> destination:<server.flag[cowCannons].random.as_location.add[0,10,0]> speed:.6
                - take iteminhand
                - flag tntCount:++
                - flag cannonShot:++
              - determine cancelled
            - else:
              - narrate "<&e><&l>You shouldn't touch others cannons"
              - determine cancelled

        - else:
          flag BlockCount:--:5
