SwampWater:
  Type: World
  Events:
    On Player Fills Bucket:
      - if <player.location.biome> == "SWAMPLAND":
        - take iteminhand
        - execute as_op "i waterbucket 1 name:WaterBucket lore:Swamp"
        - modifyblock <context.location> air
        - determine cancelled

      - else:
