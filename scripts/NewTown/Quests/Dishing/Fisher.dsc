Fisher:
  Type: Assignment
  Interact Scripts:
  - 1 FishQuest

FishQuest:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[fishDone]>:
          - chat "<&e><&l>Thanks for all your help"

        - else if <player.flag[fixedRod]> && <player.item_in_hand.lore> == lDick:
          - chat "<&e><&l>That's it! You've got it"
          - run script:FishDone instantly

        - else if <player.flag[fixedRod]>:
          - chat "<&e><&l>You've fixed the rod? Show me!"

        - else if <player.flag[hasRod]> && <player.item_in_hand.lore> == lBroken:
          - chat "<&e><&l>You've found the rod.... but it looks broken."
          - narrate "<&e><&l><player.name><&co> Can you fix it?"
          - chat "<&e><&l>It's going to take a master blacksmith to fix this.... Go see my friend the BlackSmith in NewTown"

        - else if <player.flag[hasRod]>:
          - chat "<&e><&l>You've found the rod? Show me!"

        - else if <player.flag[rodStarted]>:
          - chat "<&e><&l>Like I said, the Rod of Dick was lost in a shipwreck at this very spot.... If someone could only dive deeper..."

        - else if <player.flag[FishStarted]>:
          - chat "<&e><&l>Well I've been searching out here for weeks and I haven't caught it... I think I need the Rod of Dick..."
          - narrate "<&e><&l><player.name><&co> Rod of Dick what could that possibly be?"
          - chat "<&e><&l>That's why I build my house on this rock... Some say the Rod of Dick was lost in a shipwreck at this very spot. But I can't seem to dive that deeply."
          - flag rodStarted

        - else:
          - chat "<&e><&l>Hey there <player.name>... I'm looking for a certain kind of fish. Have you ever seen a penis eating trout?"

      Chat Trigger:
        1:
          Trigger: /Yes/ I have actually seen apenis eating trout
          Script:
          - chat "<&e><&l>You have! Good maybe you can help me catch one..."
          - flag fishStarted

        2:
          Trigger: /No/! what could that possibly be?
          Script:
          - chat "<&e><&l>You haven't? Well it's a trout that eats your penis. I need it for uh.... stuff. Anyway I'm sure you can help!"
          - flag fishStarted

FishDone:
  Type: Task
  Script:
    - take iteminhand
    - chat "<&e><&l>Here you go <player.name>! Just to thank you for your help"
    - execute as_op "i fishingrod 1 name:<player.name>'s lore:Master_Rod luck:5 lure:5 unbreaking:3"
    - give money qty:5000
    - give 349 qty:5
    - give 349:1 qty:5
    - give 349:2 qty:5
    - give 349:3 qty:5
    - execute as_server "addcredits <player.name> 15"
    - execute as_op "addlevels fishing 15"
    - narrate "<&e><&l>You've received $5,000"
    - narrate "<&e><&l>You've 15 McMMO Credits"
    - flag fishDone
    - flag fishStarted:!
    - flag fixedRod:!
    - firework random
    - narrate "<&e><&l>You've finished Dishing for Fick"
