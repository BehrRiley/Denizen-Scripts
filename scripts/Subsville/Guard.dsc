Guard:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT '<&a>Move along Citizen'
      Damage Trigger:
        Script:
        - Execute as_server 'pex group agro user add <player.name>'
        - CHAT "<&a>Have fun in Jail."
