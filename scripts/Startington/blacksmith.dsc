Smith:
  Type: Assignment
  Interact Scripts:
  - 3 Blacksmith
  - 2 Blacksmith2
  - 1 Blacksmith3
Blacksmith:
  Type: Interact
  Requirements:
    mode: all
    List:
    - PERMISSION TownComplete1
    - Money 10000
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Hey there you worthless piece of shit! You want your stuff repaired Nigger? It cost 10,000 Foodstamps."
      Chat Trigger:
        1:
          Trigger: /Yes/ I want a repair!
          Script:
           - CHAT "<&a>Great! There you go!"
           - execute as_op 'fix all'
           - execute as_server 'econ sub <player.name> 10000'
        2:
          Trigger: /No/ I like being a bitch
          Script:
           - CHAT "<&a>Alright fine you greedy Jew."
    2:
      Click Trigger:
        Script:
        - ZAP 1
    3:
      Click Trigger:
        Script:
        - ZAP 1
Blacksmith2:
  Type: Interact
  Requirements:
    mode: all
    List:
    - PERMISSION TownComplete1
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>The fuck? You ain't got the money."
Blacksmith3:
  Type: Interact
  Requirements:
    mode: none
    List:
    - none
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>I don't know you well enough..."
