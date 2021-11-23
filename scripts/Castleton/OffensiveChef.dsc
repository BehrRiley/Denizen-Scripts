Chef:
  Type: Assignment
  Interact Scripts:
  - 1 PrettyCake
  Actions:
    On Assignment:
      - trigger name:proximity toggle:true radius:5 cooldown:60
    On Enter Proximity:
      - run script:ChefMove

PrettyCake:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:

        - if <player.flag[cakeDone]>:
          - chat "<&e><&l>Thanks for all your help"


        - else if <player.flag[cakeDuring]>:
          - run script:recipeCheck

        - else:
          - chat "<&e><&l>I need help making a cake"
          - flag cakeDuring

RecipeCheck:
  Type: Task
  Script:
    - chat "<&e><&l>Now let's see what you've brought me..."
    - if <player.inventory.qty[sugar[display_name=Sugar;lore=Master]]> > 0 && !<player.flag[gotSugar]>:
      - chat "<&e><&l>I see you brought the Sugar"
      - take sugar[display_name=Sugar;lore=Master]
      - flag gotSugar

    - if <player.inventory.qty[wheat[display_name=Wheat;lore=Master]]> > 0 && !<player.flag[gotWheat]>:
      - chat "<&e><&l>I see you brought the Wheat"
      - take wheat[display_name=Wheat;lore=Master]
      - flag gotWheat

    - if <player.inventory.qty[cocoa_beans[display_name=Chocolate;lore=MountainTop]]> > 0 && !<player.flag[gotChco]>:
      - chat "<&e><&l>I see you brought the Cocoa"
      - take cocoa_beans[display_name=Chocolate;lore=MountainTop]
      - flag gotChoco

    - if <player.inventory.qty[milk_bucket[display_name=Milk;lore=Evil]]> > 0 && !<player.flag[gotMilk]>:
      - chat "<&e><&l>I see you brought the Milk"
      - take milk_bucket[display_name=Milk;lore=Evil]
      - flag gotMilk

    - if <player.inventory.qty[egg[display_name=Egg;lore=Quality]]> > 0 && !<player.flag[gotEggs]>:
      - chat "<&e><&l>I see you brought the Egg"
      - take egg[display_name=Egg;lore=Quality]
      - flag gotEggs

    - if <player.flag[gotSugar]> && <player.flag[gotChoco]> && <player.flag[gotMilk]> && <player.flag[gotEggs]>:
      - chat "<&e><&l>You've got all the ingredients! Wow!"
      - run script:CakeDone

    - else:
      - chat "<&e><&l>We still need..."
      
      - if !<player.flag[gotSugar]>:
        - narrate "<&4><&l>Sugar and Wheat from a Master Farmer."

      - if !<player.flag[gotEggs]>:
        - narrate "<&4><&l>Eggs from the churches chicken."

      - if !<player.flag[gotMilk]>:
        - narrate "<&4><&l>Milk from an evil cow."

      - if !<player.flag[gotChoco]>:
        - narrate "<&4><&l>Cocoa Beans from a jungle mountain top."

CakeDone:
  Type: Task
  Script:
    - flag gotMilk:!
    - flag gotChoco:!
    - flag gotSugar:!
    - flag gotWheat:!
    - flag gotEggs:!
    - flag wheatHelped:!
    - flaged milkedMe:!
    - flag cakeDuring:!
    - flag cakeDone
    - firework random
    - execute as_server "addcredits <player.name> 15"
    - give diamond qty:5
    - give money qty:5000
    - narrate "<&4><&l>You've earned $5000"
    - narrate "<&4><&l>You've earned 15 mcmmo credits"
    - chat "<&e><&l>Take these diamonds too... Found them lying around."

ChefMove:
  Type: Task
  Script:
    - walk locaton:<npc.flag[chefSpots].as_list.random>
    - wait 3
    - animate arm_swing <npc>
    - random:
      - playsound fizz <npc.location>
      - playsound splash <npc.location>
      - playsound door_open <npc.location>
    