Rankyy:
  Type: Assignment
  Interact Scripts:
  - 17 Rank7
  - 16 Rank6
  - 15 Rank5
  - 14 Rank4
  - 13 Rank3
  - 12 Rank2
  - 11 Rank1
  - 10 Rank

Rank:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup Donor
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Here's your rank."
        - EXECUTE ASSERVER 'pex group Donor user remove <player.name>'
        - EXECUTE ASSERVER 'pex group Donor user add <player.name>'
Rank1:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup VIP
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Here's your rank."
        - EXECUTE ASSERVER 'pex group VIP user remove <player.name>'
        - EXECUTE ASSERVER 'pex group VIP user add <player.name>'
Rank2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup SuperVIP
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Here's your rank."
        - EXECUTE ASSERVER 'pex group SuperVIP user remove <player.name>'
        - EXECUTE ASSERVER 'pex group SuperVIP user add <player.name>'
Rank3:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup Premium
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Here's your rank."
        - EXECUTE ASSERVER 'pex group Premium user remove <player.name>'
        - EXECUTE ASSERVER 'pex group Premium user add <player.name>'
Rank4:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup Elite
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Here's your rank."
        - EXECUTE ASSERVER 'pex group Elite user remove <player.name>'
        - EXECUTE ASSERVER 'pex group Elite user add <player.name>'
Rank5:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup Platinum
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Here's your rank."
        - EXECUTE ASSERVER 'pex group Platinum user remove <player.name>'
        - EXECUTE ASSERVER 'pex group Platinum user add <player.name>'
Rank6:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup Legendary
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Here's your rank."
        - EXECUTE ASSERVER 'pex group Legendary user remove <player.name>'
        - EXECUTE ASSERVER 'pex group Legendary user add <player.name>'
Rank7:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup Hero
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Here's your rank."
        - EXECUTE ASSERVER 'pex group Hero user remove <player.name>'
        - EXECUTE ASSERVER 'pex group Hero user add <player.name>'
