Pigman:
  Type: Assignment
  Interact Scripts:
  - 13 ^Rank0
  - 12 ^RankNoMoney
Rank0:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY 50000
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[pigManned]> == null:
          - CHAT "<&a>Hey there faggot I can remove your rank for $50,0000. Are you interested?"
          - ZAP 2 duration:5s
        - else:
          - chat "You have to wait a week"
      Proximity Trigger:
        Script:
        - CHAT "<&a>Hi there"
    2:
      Click Trigger:
        Script:
        - CHAT "<&a>So... I remove your rank for $50,000 yes no or just shut the fuck up and walk away...."
      Chat Trigger:
        1:
          Trigger: /Yes/ I want to lose my rank!
          Script:
           - CHAT "<&a>Great, There you go Bitch thanks for the money...."
           - TAKE MONEY QTY:50000
           - flag inGuild:!
           - flag pigManned:true duration:7d
           - EXECUTE ASSERVER 'pex group Builder user remove <player.name>'
           - EXECUTE ASSERVER 'pex group Craftsman user remove <player.name>'
           - EXECUTE ASSERVER 'pex group Foreman user remove <player.name>'
           - EXECUTE ASSERVER 'pex group Pilot user remove <player.name>'
           - EXECUTE ASSERVER 'pex group Crewman user remove <player.name>'
           - EXECUTE ASSERVER 'pex group Captain user remove <player.name>'
           - EXECUTE ASSERVER 'pex group Magician user remove <player.name>'
           - EXECUTE ASSERVER 'pex group Wizard user remove <player.name>'
           - EXECUTE ASSERVER 'pex group Spellcaster user remove <player.name>'
           - EXECUTE ASSERVER 'pex group Bandit user remove <player.name>'
           - EXECUTE ASSERVER 'pex group Rogue user remove <player.name>'
           - EXECUTE ASSERVER 'pex group Thief user remove <player.name>'
           - EXECUTE ASSERVER 'pex group Priest user remove <player.name>'
           - EXECUTE ASSERVER 'pex group Bishop user remove <player.name>'
           - EXECUTE ASSERVER 'pex group Cardinal user remove <player.name>'
           - EXECUTE ASSERVER 'pex group Guard user remove <player.name>'
           - EXECUTE ASSERVER 'pex group Crusader user remove <player.name>'
           - EXECUTE ASSERVER 'pex group Veteran user remove <player.name>'
           - EXECUTE ASSERVER 'pex group fortifier user remove <player.name>'
           - EXECUTE ASSERVER 'pex group mechanic user remove <player.name>'
           - EXECUTE ASSERVER 'pex group designer user remove <player.name>'
           - EXECUTE ASSERVER 'pex group commander user remove <player.name>'
           - EXECUTE ASSERVER 'pex group gunner user remove <player.name>'
           - EXECUTE ASSERVER 'pex group bomber user remove <player.name>'
           - EXECUTE ASSERVER 'pex group summoner user remove <player.name>'
           - EXECUTE ASSERVER 'pex group brewer user remove <player.name>'
           - EXECUTE ASSERVER 'pex group enchanter user remove <player.name>'
           - EXECUTE ASSERVER 'pex group explosives user remove <player.name>'
           - EXECUTE ASSERVER 'pex group spy user remove <player.name>'
           - EXECUTE ASSERVER 'pex group assassin user remove <player.name>'
           - EXECUTE ASSERVER 'pex group voodoo user remove <player.name>'
           - EXECUTE ASSERVER 'pex group pacifist user remove <player.name>'
           - EXECUTE ASSERVER 'pex group patriarch user remove <player.name>'
           - EXECUTE ASSERVER 'pex group archer user remove <player.name>'
           - EXECUTE ASSERVER 'pex group swordsman user remove <player.name>'
           - EXECUTE ASSERVER 'pex group tank user remove <player.name>'
           - ZAP 1
        2:
          Trigger: /No/ I like being my class
          Script:
           - CHAT "<&a>Alright fine... Go Away."
           - ZAP 1
RankNoMoney:
  Type: Interact
  Requirements:
    Mode: None
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Bitch you ain't got the money..."
