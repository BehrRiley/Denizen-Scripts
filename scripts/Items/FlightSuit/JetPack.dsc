JetPackCheck:
  Type: World
  Events:
    On player right clicks with blaze_powder:
      - if <player.item_in_hand.lore> == lFuel && <player.equipment.chestplate.lore> == lJetpack:
        - run script:JetPack instantly
JetPack:
  Type: Task
  Script:
    - playsound FIREWORK_LAUNCH  <player.location>
    - push <player> speed:.8
    - take iteminhand
    - playeffect <player.location> effect:LAVA visibility:20 qty:100
    - playeffect <player.location> effect:CLOUD visibility:20 qty:100
