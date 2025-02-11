ShopKeepers:
  Type: Assignment
  Interact Scripts:
  - 1 ShopKeep
  - 0 ShopsClosed

ShopKeep:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - if <npc.flag[Farmer]>:
          - run script:FarmShop

        - else if <npc.flag[Priest]>:
          - run script:PriestShop

        - else if <npc.flag[Griefer]>:
          - run script:GrieferShop

        - else if <npc.flag[Mage]>:
          - run script:MageShop

        - else if <npc.flag[Fighter]>:
          - run script:FighterShop

        - else if <npc.flag[Block]>:
          - run script:BlockShop

        - else if <npc.flag[Pilot]>:
          - run script:PilotShop

        - else if <npc.flag[Food]>:
          - run script:FoodShop

        - else:
          - chat "<&e><&l>Im a confused shop keeper"

FarmShop:
  Type: Task
  Script:
    - chat "<&e><&l>Welcome to the Farm Shop... Take a look"
    - inventory open d:<server.flag[farmingShop].as_location.inventory>

PriestShop:
  Type: Task
  Script:
    - chat "<&e><&l>Welcome to the Priest Shop... Take a look"
    - inventory open d:<server.flag[priestShop].as_location.inventory>

GrieferShop:
  Type: Task
  Script:
    - chat "<&e><&l>Welcome to the Griefer Shop... Take a look"
    - inventory open d:<server.flag[grieferShop].as_location.inventory>

MageShop:
  Type: Task
  Script:
    - chat "<&e><&l>Welcome to the mage Shop... Take a look"
    - inventory open d:<server.flag[mageShop].as_location.inventory>

FighterShop:
  Type: Task
  Script:
    - chat "<&e><&l>Welcome to the Fighter Shop... Take a look"
    - inventory open d:<server.flag[fighterShop].as_location.inventory>

BlockShop:
  Type: Task
  Script:
    - chat "<&e><&l>Welcome to the Block Shop... Take a look"
    - inventory open d:<server.flag[blockShop].as_location.inventory>

PilotShop:
  Type: Task
  Script:
    - chat "<&e><&l>Welcome to the Pilot Shop... Take a look"
    - inventory open d:<server.flag[pilotShop].as_location.inventory>

FoodShop:
  Type: Task
  Script:
    - chat "<&e><&l>Welcome to the Food Shop... Take a look"
    - inventory open d:<server.flag[foodShop].as_location.inventory>

ShopsClosed:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "Shops are closed temporarily"
