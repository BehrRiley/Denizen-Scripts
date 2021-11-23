GobyThere:
  Type: Assignment
  Interact Scripts:
  - 0 Unknown
  - 1 GobyNo
  - 2 GobyYes
GobyYes:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - permission Craft.HorseArmor
    - MONEY qty:100
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "Okay Let's Go. That will be $100 FoodStamps"
        - narrate "Goby Takes $100 Foodstamps and you're on your way to Witchington"
        - execute as_op "warp witchington"
GobyNo:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - permission Craft.HorseArmor
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "You don't have enough Money to get to Witchington... It cost $100 Foodstamps."
GobyBack:
  Type: Assignment
  Interact Scripts:
  - 0 Unknown
  - 1 GobyNo1
  - 2 GobyYes1
GobyYes1:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - permission Craft.HorseArmor
    - MONEY qty:100
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "Okay Let's Go. That will be $100 FoodStamps"
        - narrate "Goby Takes $100 Foodstamps and you're on your way back to TreeTown."
        - execute as_op "warp TreeTownDocks"
GobyNo1:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - permission Craft.HorseArmor
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "You don't have enough Money to get back to TreeTown."
