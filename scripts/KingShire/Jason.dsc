Jason:
  Type: Assignment
  Interact Scripts:
  - 1 JasonQuest
JasonQuest:
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

        - else if <player.flag[Package]> && <[player.item_in_hand.lore> == lSecret:
          - chat "Thank goodness just in time!"
          - run Script:SecretPackageTask

        - else if <player.flag[Package]>:
          - chat "Did you eat... I mean lose my secret package???"

        - else if <player.flag[RifleGather]>:
          - chat "I need pick up a secret package from ChairmanMao... He will know you're coming."

        - else if <player.flag[Jason]>:
          - chat "So this is the Bullet.... Yes... I see what he was going for. This can work! I just need you to get one thing for me."
          - flag RifleGather

        - else if <player.flag[Rifle]>:
          - chat "Take the Rifle to CaptainCox"
        - else:
          - chat "I don't know you..."
SecretPackageTask:
  Type: Task
  Script:
    - playsound location:<player.location> sound:Eat volume:2
    - playsound location:<player.location> sound:Eat volume:2
    - playsound location:<player.location> sound:Eat volume:2
    - playsound location:<player.location> sound:Eat volume:2
    - chat "Oh yes this is... Very uh...."
    - playsound location:<player.location> sound:Eat volume:2
    - playsound location:<player.location> sound:Eat volume:2
    - playsound location:<player.location> sound:Eat volume:2
    - playsound location:<player.location> sound:Eat volume:2
    - chat "Oh yes this is... Very uh.... Important to my research"
    - playsound location:<player.location> sound:Eat volume:2
    - playsound location:<player.location> sound:Eat volume:2
    - playsound location:<player.location> sound:Eat volume:2
    - playsound location:<player.location> sound:Eat volume:2
    - chat "Okay that was... Enlightening"
    - playsound location:<player.location> sound:Drink volume:2
    - playsound location:<player.location> sound:Burp volume:5
    - chat "Okay! I have solved the problem. Here take this Rifle and give it to CaptainCox."
    - execute as_server "give <player.name> 369 1 name:Rifle lore:CoxsRifle"
    - flag Rifle
    - flag Package:!
    - flag Jason:!
