DrStinky:
  Type: Assignment
  actions:
    on assignment:
      - trigger name:click state:true
  Interact Scripts:
  - MyWife

MyWife:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[wifeDone]>:
          - chat "<&a><&l>Thanks for saving my wife"

        - else if <player.flag[stewBring]> && <player.inventory.quantity[brown_mushroom]> > 0 && <player.inventory.quantity[saddle]> > 0 <player.inventory.quantity[fermented_spider_eye]> > 0 <player.inventory.list_contents.with_lore[Swamp].size> > 0:
          - run script:WifeSave

        - else if <player.flag[stewBring]>:
          - chat "<&a><&l>Like I said <player.name>... I need a bucket of swamp water, a brown mushroom, a raw fish and a fermented spider eye."

        - else if <player.flag[wifeStart]>:
          - narrate "<&4><&l>How does one make BoomBoomStoo? O="
          - chat "<&a><&l>BoomBoomStoo is a precious recipe to the people of BoomBoomTown and it's not shared with NOOBS! D=<"
          - narrate "<&4><&l>But your wife needs help! For Bawb's sake just tell me what you need!D'="
          - chat "<&a><&l>Alright... I need a bucket of swamp water, a brown mushroom, a raw fish and a fermented spider eye. D="
          - flag player stewBring

        - else:
          - chat "<&a><&l>You there... <player.name>! I need your help... my wife is  very sick"
          - narrate "<&4><&l><player.name><&co> That's not good! What can I do to help?"
          - chat "<&a><&l>I need... BoomBoomStoo"
          - narrate "<&4><&l>You've started BoomBoomStoo"
          - flag wifeStart


WifeSave:
  Type: Task
  speed: 0.5
  Script:
    - flag player stewBring:!
    - flag player wifeStart:!
    - flag player wifeDone
    - take brown_mushroom
    - take raw_cod
    - take fermented_spider_eye
    - take water_bucket
    - chat "<&a><&l>You have the ingredients!!! Quickly give them to me!"
    - ~walk <npc.flag[cauldronSpot]> auto_range
    - equip <npc> hand:wooden_shovel
    - playsound splash <player>
    - animate arm_swing <npc>
    - playsound splash <player>
    - animate arm_swing <npc>
    - playsound fizz <player>
    - animate arm_swing <npc>
    - equip <npc> hand:282
    - wait 5
    - ~walk <npc.flag[wifeSpot]> auto_range
    - narrate "<&4><&l><npc.name> gives the soup to his wife... She starts to wake up."
    - playsound eat <player>
    - playsound burp <player>
    - equip <npc> hand:air
    - chat "<&a><&l>Let's go back downstairs.... she needs her rest"
    - wait 5
    - ~walk <npc.flag[standSpot]> auto_range
    - chat "<&a><&l>Thank you... you have saved my wife's life... There's also some stew left."
    - run script:StooFinish

StooFinish:
  Type: Task
  Script:
    - narrate "<&4><&l>You've Completed BoomBoomStoo!"
    - firework random
    - permission add craftbook.mech.cauldron.recipe.BoomBoomStoo
    - money give quantity:5000
    - execute as_server "addcredits <player.name> 10"
    - give soup[display=BoomBoomStoo;lore=BoomBoom]
    - narratte "You've received 10 McMMO Credits"
    - narrate "<&4><&l>You've been given $5,000"
    - narrate "<&4><&l>You can now make BoomBoomStoo"
