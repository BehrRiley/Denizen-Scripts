DamageListen:
  Type: World
  Events:
    On npc Damages player:
      - if <context.damager.name> == "PeePeeBandit":

      - else if <context.damager.name> == "Demonyte":
          - if <context.entity.equipment.helmet.lore> == lDemonHelmet:
            - define attackChance <util.random.int[1].to[10]>

            - if <[attackChance]> == 10:
              - execute as_npc "replacenear 1 air fire"
      
            - else if:
              - cast poison
      
            - else:
              - hurt <context.entity> 1

          - else:

            - if <context.entity.flag[DemonDying]> == null:
              - narrate targets:<context.entity> "Oh shit you better put a DemonHelmet On!"
              - run script:DemonyteDeath as:<context.entity> delay:5s
              - flag player:<context.entity> DemonDying:true duration:5s 

      - else if <context.damager.name> == "Soul_Guardian":
        - harm <context.entity> 2
