Tybalt:
  Type: Assignment
  Interact Scripts:
  - 1 TybaltQuest
TybaltQuest:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[CoxStart]>:
          - chat "How's It Going?"

        - else if <player.flag[BulletGather]> && <[player.item_in_hand.lore> == lAmmo:
          - chat "That's exactly what I needed! Here take this Bullet and give it to CaptainCox."
          - execute as_server "give <player.name> 69 1 name:Bullet lore:CoxsBullet"
          - flag Bullet
          - flag BulletGather:!
          - flag Tybalt:!

        - else if <player.flag[BulletGather]>:
          - chat "I need you to mix together some ingredients in my lab.... Maybe you can figure something out"
          - execute AS_SERVER "pex user <player.name> add craftbook.mech.cauldron.recipe.Bullet"

        - else if <player.flag[Tybalt]>:
          - chat "So Captain Cox sent you here? Well I've been working on a Bullet... I just don't know what to use..."
          - flag BulletGather

        - else if <player.flag[Bullet]>:
          - chat "Take the Bullet to CaptainCox"
        - else:
          - chat "I don't know you..."
