ButcherCheck:
  Type: World
  Events:
    On Butcher Command:
      if !<player.name[NiggerBob]> {
        - flag butchered:true duration:1h
        - if <player.flag[butchered]> == "true":
          - narrate "Butcher is cooling down"
          - determine cancelled
        - else:
          - announce "<&4><&l><player.name> has butchered"
